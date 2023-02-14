import { Dispatch, SetStateAction } from "react";
import {
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
  Button,
} from "@mui/material";
import CarSpace from "models/CarSpace";
import CustomerDatePicker from "components/CustomerDatePicker";

export interface UpdateBookingDialogProps {
  open: boolean;
  handleClose: () => void;
  carSpace: CarSpace;
  startDate: Date | null;
  setStartDate: Dispatch<SetStateAction<Date | null>>;
  endDate: Date | null;
  setEndDate: Dispatch<SetStateAction<Date | null>>;
  datesFromOtherBookings?: Date[];
  handleUpdateBooking: () => void;
}
const UpdateBookingDialog: React.FC<UpdateBookingDialogProps> = (props) => {
  const {
    open,
    handleClose,
    carSpace,
    startDate,
    setStartDate,
    endDate,
    setEndDate,
    datesFromOtherBookings,
    handleUpdateBooking,
  } = props;

  return (
    <Dialog open={open} onClose={handleClose} maxWidth='xs'>
      <DialogTitle>Please select new booking date</DialogTitle>
      <DialogContent>
        <CustomerDatePicker
          startDate={startDate}
          setStartDate={setStartDate}
          endDate={endDate}
          setEndDate={setEndDate}
          availableType={carSpace.available_type}
          availableFromDate={
            carSpace.available_from_date
              ? new Date(carSpace.available_from_date)
              : undefined
          }
          availableToDate={
            carSpace.available_to_date
              ? new Date(carSpace.available_to_date)
              : undefined
          }
          availableWeekDays={carSpace.available_week_days
            ?.split(",")
            .map((d) => Number(d))}
          availableFromTime={
            carSpace.available_from_time
              ? new Date(carSpace.available_from_time)
              : undefined
          }
          availableToTime={
            carSpace.available_to_time
              ? new Date(carSpace.available_to_time)
              : undefined
          }
          unavailableType={carSpace.unavailable_type}
          unavailableFromDate={
            carSpace.unavailable_from_date
              ? new Date(carSpace.unavailable_from_date)
              : undefined
          }
          unavailableToDate={
            carSpace.unavailable_to_date
              ? new Date(carSpace.unavailable_to_date)
              : undefined
          }
          unavailableDates={
            carSpace.unavailable_dates
              ? carSpace.unavailable_dates.split(",").map((d) => new Date(d))
              : undefined
          }
          datesFromOtherBookings={datesFromOtherBookings}
        />
      </DialogContent>
      <DialogActions>
        <Button onClick={handleClose}>Cancel</Button>
        <Button onClick={handleUpdateBooking}>Update</Button>
      </DialogActions>
    </Dialog>
  );
};

export default UpdateBookingDialog;
