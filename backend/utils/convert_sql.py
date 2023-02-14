a = "id,title,bond,size_length,size_width,max_height,price_per_day,price_per_week,price_per_month,max_allowed_vehicle,car_space_type,amenities,access_type,provider_id,address_id,address,latitude,longtitude,unavailable_type,unavailable_dates,unavailable_from_date,unavailable_to_date,available_type,available_from_time,available_to_time,available_from_date,available_to_date,available_week_days,description,instructions"
b = a.split(',')
c = '''(1, 'test0', 27.0, 4, 3, 4, 27, 189, 810, 'hatchback', 'outside', 'cctv', 'none', 1, '524532332b33616f2f7a365863736845414a57564f413d3d', 'NSW FIRE BRIGADE CITY OF SYDNEY 211-217 CASTLEREAGH STREET SYDNEY NSW 2000', -33.87510015, 151.20867145, 0, null, '2022-06-30', '2022-07-01', 0, null, null, null, null, '6', 'this outside space is large', 'pets friendly and childrend friendly'),
(2, 'test1', 17.0, 4, 3, 4, 17, 119, 510, 'SUV', 'undercover', 'cctv', 'password', 2, '47784442447672556b654d534e39544a375a4c6275673d3d', 'SYDNEY HOSPITAL/EYE HOSPITAL 8 MACQUARIE STREET SYDNEY NSW 2000', -33.86821515, 151.21286793, 1, '2022-06-30', null, null, 0, null, null, null, null, '6', 'this space is easy to be found', 'pets friendly and childrend friendly'),
(3, 'test2', 34.0, 3, 3, 3, 34, 238, 1020, 'sedan', 'lock up garage', 'wc', 'card', 3, '774b692f307042414654797949713843534a703950773d3d', 'MUSEUM OF SYDNEY 37 PHILLIP STREET SYDNEY NSW 2000', -33.86365310, 151.21146487, 0, null, '2022-07-06', '2022-07-08', 1, '2022-07-09 20:13:41', '2022-07-10 20:13:41', '2022-07-09', '2022-07-10', '2', 'this car space is disabled acceess friendly', 'charging equipments are avaliable'),
(4, 'test3', 50.0, 4, 3, 4, 50, 350, 1500, 'truck', 'Indoor lot', 'arranged transfers', 'password', 4, '3073696b3967774c6a6b42756b4f6f766b5a77364b413d3d', 'SYDNEY CUSTOMS HOUSE 31 ALFRED STREET SYDNEY NSW 2000', -33.86218552, 151.21086266, 1, '2022-07-01', null, null, 0, null, null, null, null, '7', 'this car space is friendly to elderly', 'pets friendly and childrend friendly'),
(5, 'test4', 56.0, 3, 3, 3, 56, 392, 1680, 'van', 'outside', 'car wash', 'none', 5, '2f7645725061772b6d46554e75534833684536375a673d3d', '2005 MARTIN PLACE SYDNEY NSW 2000', -33.86787416, 151.21199335, 1, '2022-07-10', null, null, 0, null, null, null, null, '6', 'this outside space is large', 'pets friendly and childrend friendly'),
(6, 'test5', 37.0, 4, 4, 4, 37, 259, 1110, 'hatchback', 'undercover', 'cctv', 'password', 6, '6b7971695645685a4443417a656763685851457731513d3d', '200A GEORGE STREET SYDNEY NSW 2000', -33.86263026, 151.2079821, 1, '2022-07-07', null, null, 0, null, null, null, null, '6', 'this space is easy to be found', 'pets friendly and childrend friendly'),
(7, 'test6', 41.0, 3, 4, 3, 41, 287, 1230, 'SUV', 'lock up garage', 'wc', 'card', 7, '7843306d4166366178565047624e3366516e4f434d773d3d', '2001 MARTIN PLACE SYDNEY NSW 2000', -33.86750007, 151.20778511, 0, null, '2022-07-08', '2022-07-09', 0, null, null, null, null, '7', 'this car space is disabled acceess friendly', 'charging equipments are avaliable'),
(8, 'test7', 60.0, 3, 3, 4, 60, 420, 1800, 'sedan', 'Indoor lot', 'arranged transfers', 'card', 8, '7a785476366578536267435050716e48353731766f673d3d', '200B GEORGE STREET SYDNEY NSW 2000', -33.86263026, 151.20798213, 0, null, '2022-07-08', '2022-07-09', 1, '2022-07-10 19:16:41', '2022-07-11 19:16:41', '2022-07-10', '2022-07-11', '5', 'this car space is large', 'pets friendly and childrend friendly'),
(9, 'test8', 42.0, 3, 3, 4, 42, 294, 1260, 'truck', 'outside', 'car wash', 'none', 9, '4c62546d756e343079657453474545774c307a6f73773d3d', '2002 MARTIN PLACE SYDNEY NSW 2000', -33.86762517, 151.20915433, 0, null, '2022-07-10', '2022-07-12', 0, null, null, null, null, '7', 'this outside space is large', 'pets friendly and childrend friendly'),
(10, 'test9', 53.0, 3, 4, 3, 53, 371, 1590, 'van', 'undercover', 'cctv', 'password', 10, '4464396430364968614a5433724b59745a48634476413d3d', '6 MELBOURNE PLACE MELBOURNE VIC 3000', -37.81349989, 144.96908846, 0, null, '2022-07-06', '2022-07-38', 0, null, null, null, null, '6', 'this space is easy to be found', 'pets friendly and childrend friendly'),
(11, 'test10', 35.0, 4, 4, 4, 35, 245, 1050, 'hatchback', 'lock up garage', 'wc', 'password', 11, '3448476561706d637a61693445725862304432595a513d3d', 'MELBOURNE METRO NORTH MELBOURNE STATION 77-199 LAURENS STREET NORTH MELBOURNE VIC 3051', -37.79977321, 144.93725919, 0, null, '2022-07-04', '2022-07-05', 0, null, null, null, null, '6', 'this car space is disabled acceess friendly', 'charging equipments are avaliable'),
(12, 'test11', 50.0, 4, 3, 3, 50, 350, 1500, 'SUV', 'block my driveway', 'cctv', 'key', 12, '33376f38366a315952566735445465776f78485358773d3d', 'KELVIN CLUB 14-30 MELBOURNE PLACE MELBOURNE VIC 3000', -37.81320259, 144.96893098, 0, null, '2022-07-06', '2022-07-07', 0, null, null, null, null, '6', 'this car space is large', 'pets friendly and childrend friendly'),
(13, 'test12', 55.0, 3, 3, 3, 55, 385, 1650, 'sedan', 'outside', 'car wash', 'none', 13, '7338544c3341516b4c663453634c74415749726935773d3d', 'MELBOURNE CENTRAL 300 LONSDALE STREET MELBOURNE VIC 3000', -37.81168719, 144.96349219, 0, null, '2022-07-12', '2022-07-13', 1, '2022-07-10 15:16:41', '2022-07-11 15:16:41', '2022-07-10', '2022-07-11', '3', 'this outside space is large', 'pets friendly and childrend friendly'),
(14, 'test13', 40.0, 3, 4, 4, 40, 280, 1200, 'truck', 'undercover', 'cctv', 'password', 14, '457830476749494b73576e5064505452744d704c68673d3d', 'CONSERVATORY MELBOURNE 9-23 MACKENZIE STREET MELBOURNE VIC 3000', -37.80752339, 144.96733383, 0, null, '2022-07-11', '2022-07-12', 0, null, null, null, null, '7', 'this space is easy to be found', 'pets friendly and childrend friendly'),
(15, 'test14', 39.0, 3, 3, 3, 39, 273, 1170, 'van', 'lock up garage', 'wc', 'password', 15, '424d742b502b5931764b2f706f3745566d73613863513d3d', 'UNIT 3006 135 ABECKETT STREET MELBOURNE VIC 3000', -37.80974490, 144.95970876, 0, null, '2022-07-06', '2022-07-07', 0, null, null, null, null, '6', 'this car space is disabled acceess friendly', 'charging equipments are avaliable'),
(16, 'test15', 47.0, 3, 4, 3, 47, 329, 1410, 'hatchback', 'outside', 'cctv', 'none', 16, '4b4a54366351552f4156334963754e65556e775677413d3d', 'UNIT 3010 23 MACKENZIE STREET MELBOURNE VIC 3000', -37.80752339, 144.96733383, 0, null, '2022-07-10', '2022-07-13', 1, '2022-07-10 11:16:23', '2022-07-11 11:16:23', '2022-07-10', '2022-07-11', '5', 'this outside space is large', 'pets friendly and childrend friendly'),
(17, 'test16', 59.0, 3, 4, 3, 59, 413, 1770, 'SUV', 'outside', 'cctv', 'none', 17, '7a49396136654c624641655550684b55334f437776673d3d', 'UNIT 3001 464 COLLINS STREET MELBOURNE VIC 3000', -37.81755429, 144.95864586, 0, null, '2022-07-02', '2022-07-04', 0, null, null, null, null, '7', 'this outside space is large', 'pets friendly and childrend friendly'),
(18, 'test17', 41.0, 4, 3, 3, 41, 287, 1230, 'sedan', 'undercover', 'cctv', 'password', 18, '4e6d4251356e50726c4f574c44496c73577949782b513d3d', 'UNIT 3003 28 TIMOTHY LANE MELBOURNE VIC 3000', -37.81217370, 144.96114570, 0, null, '2022-07-13', '2022-07-14', 0, null, null, null, null, '6', 'this space is easy to be found', 'pets friendly and childrend friendly'),
(19, 'test18', 51.0, 3, 3, 4, 51, 357, 1530, 'truck', 'lock up garage', 'wc', 'password', 19, '6750686c6e4477366d564e5441467a726a38756956413d3d', 'UNIT 3005 28 TIMOTHY LANE MELBOURNE VIC 3000', -37.81217370, 144.96114570, 0, null,  '2022-07-16', '2022-07-17', 0, null, null, null, null, '6', 'this car space is disabled acceess friendly', 'charging equipments are avaliable')
'''
d = [x[1:] for x in c.split('),\n')]
res = []
res2 = []
for j in range(0, len(d)):

    e = d[j].split(', ')

    r = "cs{} = CarSpace(".format(j)
    res2.append("cs{}".format(j))
    for i in range(0, len(b)):
        if e[i] == 'null':
            continue
        if (b[i].endswith('to_date') or b[i].endswith('to_time') or b[i].endswith('from_date') or b[i].endswith(
                'from_time')):
            r += "{}=parser.parse({}),".format(b[i], e[i])
        elif b[i] != 'id':
            r += "{}={},".format(b[i], e[i])

    r += ''')'''
    res.append(r)

print('\n'.join(res))
print(",".join(res2))
