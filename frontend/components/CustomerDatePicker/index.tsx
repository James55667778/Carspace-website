import {
  Dispatch,
  SetStateAction,
  useCallback,
  useMemo,
  useState,
  useEffect,
} from "react";
// mui
import { Stack, TextField, Typography } from "@mui/material";
import { DatePicker } from "@mui/x-date-pickers/DatePicker";
import { PickersDay } from "@mui/x-date-pickers/PickersDay";
// internal
import { getDaysArray, isIncludeDate } from "utils/utils";
import useApplicationContext from "hooks/useApplicationContext";
import { AvailableType, UnavailableType } from "models/CarSpace";
// third-party
import { getDay, isPast } from "date-fns";

interface CustomerDatePickerProps {
  // from car space detail
  availableType: AvailableType;
  availableFromDate?: Date;
  availableToDate?: Date;
  availableWeekDays?: number[];
  availableFromTime?: Date;
  availableToTime?: Date;
  unavailableType: UnavailableType;
  unavailableFromDate?: Date;
  unavailableToDate?: Date;
  unavailableDates?: Date[];
  datesFromOtherBookings?: Date[];
  // for form
  startDate: Date | null;
  setStartDate: Dispatch<SetStateAction<Date | null>>;
  endDate: Date | null;
  setEndDate: Dispatch<SetStateAction<Date | null>>;
}

const CustomerDatePicker: React.FC<CustomerDatePickerProps> = (props) => {
  const { token } = useApplicationContext();
  const isLoggedIn = !!token;
  const {
    availableType,
    availableFromDate: _availableFromDate,
    availableToDate: _availableToDate,
    availableFromTime: _availableFromTime,
    availableToTime: _availableToTime,
    availableWeekDays: _availableWeekDays,
    unavailableType,
    unavailableDates: _unavailableDates,
    unavailableFromDate: _unavailableFromDate,
    unavailableToDate: _unavailableToDate,
    datesFromOtherBookings,
    startDate,
    setStartDate,
    endDate,
    setEndDate,
  } = props;

  const availableFromDate = useMemo(
    () => _availableFromDate || new Date(),
    [_availableFromDate]
  );
  const availableToDate = useMemo(
    () => _availableToDate || new Date(2099, 11, 31),
    [_availableToDate]
  );

  const availableWeekDays = useMemo(
    () => _availableWeekDays || [0, 1, 2, 3, 4, 5, 6],
    [_availableWeekDays]
  );

  const unavailableDates = useMemo(() => {
    let res = [] as Date[];
    if (_unavailableFromDate && _unavailableToDate) {
      res = getDaysArray(_unavailableFromDate, _unavailableToDate);
    } else if (_unavailableDates) {
      res = _unavailableDates;
    }
    if (datesFromOtherBookings) {
      res = res.concat(datesFromOtherBookings);
    }
    return res;
  }, [
    _unavailableDates,
    _unavailableFromDate,
    _unavailableToDate,
    datesFromOtherBookings,
  ]);

  const availableText = useMemo(() => {
    let text: string = "This car space is available ";
    if (availableType === AvailableType.ALWAYS) {
      // always available
      text += "24/7";
    } else {
      text += `from ${availableFromDate.toLocaleDateString(
        "en-au"
      )} to ${availableToDate.toLocaleDateString(
        "en-au"
      )} ${_availableFromTime?.toLocaleTimeString("en-au", {
        hour: "2-digit",
        minute: "2-digit",
      })} - ${_availableToTime?.toLocaleTimeString("en-au", {
        hour: "2-digit",
        minute: "2-digit",
      })} on ${availableWeekDays
        .map(
          (d) =>
            [
              "Sunday",
              "Monday",
              "Tuesday",
              "Wednesday",
              "Thursday",
              "Friday",
              "Saturday",
            ][d]
        )
        .join(", ")}`;
    }
    text += " except ";
    if (
      unavailableType === UnavailableType.RANGE &&
      _unavailableFromDate &&
      _unavailableToDate
    ) {
      text += `from ${_unavailableFromDate.toLocaleDateString(
        "en-au"
      )} to ${_unavailableToDate.toLocaleDateString("en-au")}`;
    } else if (
      unavailableType === UnavailableType.PICKER &&
      _unavailableDates
    ) {
      text += `${_unavailableDates
        .map((d) => d.toLocaleDateString("en-au"))
        .join(", ")}`;
    }
    text += " and days marked gray in the calendar.";

    return text;
  }, [
    _availableFromTime,
    _availableToTime,
    _unavailableDates,
    _unavailableFromDate,
    _unavailableToDate,
    availableFromDate,
    availableToDate,
    availableType,
    availableWeekDays,
    unavailableType,
  ]);

  const disabledFromDate = useCallback(
    (day: Date) => {
      return (
        (availableType === AvailableType.CUSTOM &&
          (!availableWeekDays.includes(getDay(day)) ||
            day.getTime() < new Date().getTime() ||
            day.getTime() < availableFromDate.getTime() ||
            day.getTime() > availableToDate.getTime())) ||
        isIncludeDate(unavailableDates, day) ||
        isPast(day)
      );
    },
    [
      availableFromDate,
      availableToDate,
      availableType,
      availableWeekDays,
      unavailableDates,
    ]
  );

  const disabledToDate = useCallback(
    (day: Date) => {
      return startDate
        ? (availableType === AvailableType.CUSTOM &&
            (!availableWeekDays.includes(getDay(day)) ||
              day.getTime() > availableToDate.getTime())) ||
            isIncludeDate(unavailableDates, day) ||
            day.getTime() < startDate.getTime()
        : true;
    },
    [
      availableToDate,
      availableType,
      availableWeekDays,
      startDate,
      unavailableDates,
    ]
  );

  return (
    <Stack spacing={2} sx={{ mt: 2, mb: 2 }}>
      <Typography sx={{ textAlign: "center", p: 2 }} variant='subtitle2'>
        {availableText}
      </Typography>
      {isLoggedIn && (
        <>
          <DatePicker
            label='from'
            inputFormat='dd/MM/yyyy'
            value={startDate}
            disablePast
            onChange={(newValue) => {
              setStartDate(newValue);
              setEndDate(null);
            }}
            renderDay={(day, _value, PickersDayProps) => (
              <PickersDay
                {...PickersDayProps}
                disabled={disabledFromDate(day)}
              />
            )}
            renderInput={(params) => <TextField {...params} />}
          />
          <DatePicker
            label='to'
            inputFormat='dd/MM/yyyy'
            value={endDate}
            disablePast
            disabled={!startDate}
            onChange={(newValue) => {
              if (newValue) {
                setEndDate(newValue);
              }
            }}
            renderDay={(day, _value, PickersDayProps) => (
              <PickersDay {...PickersDayProps} disabled={disabledToDate(day)} />
            )}
            renderInput={(params) => <TextField {...params} />}
          />
        </>
      )}
    </Stack>
  );
};

export default CustomerDatePicker;
