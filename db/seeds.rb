# Seed data for Reservation_app
# Data aims to describe the Hakolahdentie 2 sauna and dryer.
######################################################
# Administrators
######################################################
isannoitsija = Admin.create(
    email: 'liisa.anttila@isannointisaarinen.fi',
    password: 'salasana',
    password_confirmation: 'salasana'
    )

######################################################
# Owners
######################################################
omistaja = Owner.create(
    name: 'As Oy Hakolahdentie 2',
    admin_id: isannoitsija.id
    )

######################################################
# Reservation targets
######################################################
sauna = ReservationTarget.create(
    name: 'Sauna',
    timeWindowInDays: 7,
    category: 2,
    owner_id: omistaja.id
    )

kuivaushuone = ReservationTarget.create(
    name: 'Kuivaushuone',
    timeWindowInDays: 7,
    category: 2,
    owner_id: omistaja.id
    )


######################################################
# Users
token_type_permanent = 1
token_type_use_once = 2
######################################################
#Hallitus = User.create(
#    name: 'Hallitus',
#    owner_id: omistaja.id,
#    password: 'salasana',
#    password_confirmation: 'salasana'
#    )
#    Hallitus_TP_1 = ReservationToken.create(
#        user_id: Hallitus.id,
#        reservation_target_id: sauna.id,
#        tokenType: token_type_permanent
#        )
#    Hallitus_TO_1 = ReservationToken.create(
#        user_id: Hallitus.id,
#        reservation_target_id: sauna.id,
#        tokenType: token_type_use_once
#        )
#    Hallitus__kh_TO_1 = ReservationToken.create(
#        user_id: Hallitus.id,
#        reservation_target_id: kuivaushuone.id,
#        tokenType: token_type_use_once
#        )


A1 = User.create(
    name: 'A1',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    A1_TO_1 = ReservationToken.create(
        user_id: A1.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    A1_kh_TO_1 = ReservationToken.create(
        user_id: A1.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )


A2 = User.create(
    name: 'A2',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    A2_TP_1 = ReservationToken.create(
         user_id: A2.id,
         reservation_target_id: sauna.id,
         tokenType: token_type_permanent
         )
    A2_TO_1 = ReservationToken.create(
             user_id: A2.id,
             reservation_target_id: sauna.id,
             tokenType: token_type_use_once
             )
     A2_kh_TO_1 = ReservationToken.create(
         user_id: A2.id,
         reservation_target_id: kuivaushuone.id,
         tokenType: token_type_use_once
         )


A3 = User.create(
    name: 'A3',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    A3_TO_1 = ReservationToken.create(
        user_id: A3.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    A3_kh_TO_1 = ReservationToken.create(
        user_id: A3.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

A4 = User.create(
    name: 'A4',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    A4_TO_1 = ReservationToken.create(
        user_id: A4.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    A4_kh_TO_1 = ReservationToken.create(
        user_id: A4.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

A5 = User.create(
    name: 'A5',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    A5_TO_1 = ReservationToken.create(
        user_id: A5.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    A5_kh_TO_1 = ReservationToken.create(
        user_id: A5.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

A6 = User.create(
    name: 'A6',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   A6_TP_1 = ReservationToken.create(
       user_id: A6.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   A6_TO_1 = ReservationToken.create(
       user_id: A6.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_use_once
       )
   A6_kh_TO_1 = ReservationToken.create(
       user_id: A6.id,
       reservation_target_id: kuivaushuone.id,
       tokenType: token_type_use_once
       )

A7 = User.create(
    name: 'A7',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    A7_TO_1 = ReservationToken.create(
        user_id: A7.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    A7_kh_TO_1 = ReservationToken.create(
        user_id: A7.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

A8 = User.create(
    name: 'A8',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    A8_TO_1 = ReservationToken.create(
        user_id: A8.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    A8_kh_TO_1 = ReservationToken.create(
        user_id: A8.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

A9 = User.create(
    name: 'A9',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   A9_TP_1 = ReservationToken.create(
       user_id: A9.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   A9_TO_1 = ReservationToken.create(
       user_id: A9.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_use_once
       )
   A9_kh_TO_1 = ReservationToken.create(
       user_id: A9.id,
       reservation_target_id: kuivaushuone.id,
       tokenType: token_type_use_once
       )

A10 = User.create(
    name: 'A10',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    A10_TO_1 = ReservationToken.create(
        user_id: A10.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    A10_kh_TO_1 = ReservationToken.create(
        user_id: A10.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

A11 = User.create(
    name: 'A11',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    A11_TO_1 = ReservationToken.create(
        user_id: A11.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    A11_kh_TO_1 = ReservationToken.create(
        user_id: A11.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

A12 = User.create(
    name: 'A12',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    A12_TO_1 = ReservationToken.create(
        user_id: A12.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    A12_kh_TO_1 = ReservationToken.create(
        user_id: A12.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

B13 = User.create(
    name: 'B13',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    B13_TO_1 = ReservationToken.create(
        user_id: B13.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    B13_kh_TO_1 = ReservationToken.create(
        user_id: B13.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

B14 = User.create(
    name: 'B14',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   B14_TP_1 = ReservationToken.create(
       user_id: B14.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   B14_TO_1 = ReservationToken.create(
       user_id: B14.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_use_once
       )
   B14_kh_TO_1 = ReservationToken.create(
       user_id: B14.id,
       reservation_target_id: kuivaushuone.id,
       tokenType: token_type_use_once
       )

B15 = User.create(
    name: 'B15',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    B15_TO_1 = ReservationToken.create(
        user_id: B15.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    B15_kh_TO_1 = ReservationToken.create(
        user_id: B15.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

B16 = User.create(
    name: 'B16',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    B16_TO_1 = ReservationToken.create(
        user_id: B16.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    B16_kh_TO_1 = ReservationToken.create(
        user_id: B16.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

B17 = User.create(
    name: 'B17',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    B17_TO_1 = ReservationToken.create(
        user_id: B17.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    B17_kh_TO_1 = ReservationToken.create(
        user_id: B17.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

B18 = User.create(
    name: 'B18',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    B18_TO_1 = ReservationToken.create(
        user_id: B18.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    B18_kh_TO_1 = ReservationToken.create(
        user_id: B18.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

B19 = User.create(
    name: 'B19',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    B19_TO_1 = ReservationToken.create(
        user_id: B19.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    B19_kh_TO_1 = ReservationToken.create(
        user_id: B19.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

B20 = User.create(
    name: 'B20',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   B20_TP_1 = ReservationToken.create(
       user_id: B20.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   B20_TO_1 = ReservationToken.create(
       user_id: B13.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_use_once
       )
   B20_kh_TO_1 = ReservationToken.create(
       user_id: B20.id,
       reservation_target_id: kuivaushuone.id,
       tokenType: token_type_use_once
       )

B21 = User.create(
    name: 'B21',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    B21_TO_1 = ReservationToken.create(
        user_id: B21.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    B21_kh_TO_1 = ReservationToken.create(
        user_id: B21.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

B22 = User.create(
    name: 'B22',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    B22_TO_1 = ReservationToken.create(
        user_id: B22.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    B22_kh_TO_1 = ReservationToken.create(
        user_id: B22.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

B23 = User.create(
    name: 'B23',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    B23_TO_1 = ReservationToken.create(
        user_id: B23.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    B23_kh_TO_1 = ReservationToken.create(
        user_id: B23.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

B24 = User.create(
    name: 'B24',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   B24_TP_1 = ReservationToken.create(
       user_id: B24.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   B24_TO_1 = ReservationToken.create(
       user_id: B13.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_use_once
       )
   B24_kh_TO_1 = ReservationToken.create(
       user_id: B24.id,
       reservation_target_id: kuivaushuone.id,
       tokenType: token_type_use_once
       )

C25 = User.create(
    name: 'C25',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    C25_TP_1 = ReservationToken.create(
        user_id: C25.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_permanent
        )
    C25_TO_1 = ReservationToken.create(
        user_id: C25.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    C25_kh_TO_1 = ReservationToken.create(
        user_id: C25.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
            )

C26 = User.create(
    name: 'C26',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   C26_TP_1 = ReservationToken.create(
       user_id: C26.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   C26_TO_1 = ReservationToken.create(
       user_id: C26.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_use_once
       )
   C26_kh_TO_1 = ReservationToken.create(
       user_id: C26.id,
       reservation_target_id: kuivaushuone.id,
       tokenType: token_type_use_once
           )

C27 = User.create(
    name: 'C27',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    C27_TO_1 = ReservationToken.create(
        user_id: C27.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    C27_kh_TO_1 = ReservationToken.create(
        user_id: C27.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

C28 = User.create(
    name: 'C28',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   C28_TP_1 = ReservationToken.create(
       user_id: C28.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   C28_TO_1 = ReservationToken.create(
       user_id: C28.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_use_once
       )
   C28_kh_TO_1 = ReservationToken.create(
       user_id: C28.id,
       reservation_target_id: kuivaushuone.id,
       tokenType: token_type_use_once
       )

C29 = User.create(
    name: 'C29',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    C29_TO_1 = ReservationToken.create(
        user_id: C29.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    C29_kh_TO_1 = ReservationToken.create(
        user_id: C29.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

C30 = User.create(
    name: 'C30',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    C30_TO_1 = ReservationToken.create(
        user_id: C30.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    C30_kh_TO_1 = ReservationToken.create(
        user_id: C30.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

C31 = User.create(
    name: 'C31',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    C31_TO_1 = ReservationToken.create(
        user_id: C31.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    C31_kh_TO_1 = ReservationToken.create(
        user_id: C31.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

C32 = User.create(
    name: 'C32',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    C32_TO_1 = ReservationToken.create(
        user_id: C32.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    C32_kh_TO_1 = ReservationToken.create(
        user_id: C32.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

C33 = User.create(
    name: 'C33',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    C33_TO_1 = ReservationToken.create(
        user_id: C33.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    C33_kh_TO_1 = ReservationToken.create(
        user_id: C33.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

C34 = User.create(
    name: 'C34',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   C34_TP_1 = ReservationToken.create(
       user_id: C34.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   C34_TP_2 = ReservationToken.create(
       user_id: C34.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   C34_TO_1 = ReservationToken.create(
       user_id: C34.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_use_once
       )
   C34_kh_TO_1 = ReservationToken.create(
       user_id: C34.id,
       reservation_target_id: kuivaushuone.id,
       tokenType: token_type_use_once
       )

C35 = User.create(
    name: 'C35',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    C35_TO_1 = ReservationToken.create(
        user_id: C35.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    C35_kh_TO_1 = ReservationToken.create(
        user_id: C35.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

C36 = User.create(
    name: 'C36',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    C36_TO_1 = ReservationToken.create(
        user_id: C36.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    C36_kh_TO_1 = ReservationToken.create(
        user_id: C36.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

D37 = User.create(
    name: 'D37',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    D37_TO_1 = ReservationToken.create(
        user_id: D37.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    D37_kh_TO_1 = ReservationToken.create(
        user_id: D37.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

D38 = User.create(
    name: 'D38',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   D38_TP_1 = ReservationToken.create(
       user_id: D38.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   D38_TO_1 = ReservationToken.create(
       user_id: D38.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_use_once
       )
   D38_kh_TO_1 = ReservationToken.create(
       user_id: D38.id,
       reservation_target_id: kuivaushuone.id,
       tokenType: token_type_use_once
       )

D39 = User.create(
    name: 'D39',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    D39_TO_1 = ReservationToken.create(
        user_id: D39.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    D39_kh_TO_1 = ReservationToken.create(
        user_id: D39.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

D40 = User.create(
    name: 'D40',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    D40_TO_1 = ReservationToken.create(
        user_id: D40.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    D40_kh_TO_1 = ReservationToken.create(
        user_id: D40.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

D41 = User.create(
    name: 'D41',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    D41_TO_1 = ReservationToken.create(
        user_id: D41.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    D41_kh_TO_1 = ReservationToken.create(
        user_id: D41.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

D42 = User.create(
    name: 'D42',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    D42_TO_1 = ReservationToken.create(
        user_id: D42.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    D42_kh_TO_1 = ReservationToken.create(
        user_id: D42.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

D43 = User.create(
    name: 'D43',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    D43_TO_1 = ReservationToken.create(
        user_id: D43.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    D43_kh_TO_1 = ReservationToken.create(
        user_id: D43.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

D44 = User.create(
    name: 'D44',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    D44_TO_1 = ReservationToken.create(
        user_id: D44.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    D44_kh_TO_1 = ReservationToken.create(
        user_id: D44.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

D45 = User.create(
    name: 'D45',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    D45_TO_1 = ReservationToken.create(
        user_id: D45.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    D45_kh_TO_1 = ReservationToken.create(
        user_id: D45.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

D46 = User.create(
    name: 'D46',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    D46_TO_1 = ReservationToken.create(
        user_id: D46.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    D46_kh_TO_1 = ReservationToken.create(
        user_id: D46.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

D47 = User.create(
    name: 'D47',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    D47_TO_1 = ReservationToken.create(
        user_id: D47.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    D47_kh_TO_1 = ReservationToken.create(
        user_id: D47.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

D48 = User.create(
    name: 'D48',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    D48_TO_1 = ReservationToken.create(
        user_id: D48.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_use_once
        )
    D48_kh_TO_1 = ReservationToken.create(
        user_id: D48.id,
        reservation_target_id: kuivaushuone.id,
        tokenType: token_type_use_once
        )

#####################################################
# Reservation slots
#####################################################
Ke17_18 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 3,
    startTime: 1700,
    endTime: 1800,
    slotStatus: 0
    )
Ke18_19 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 3,
    startTime: 1800,
    endTime: 1900,
    slotStatus: 0
    )
Ke19_20 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 3,
    startTime: 1900,
    endTime: 2000,
    slotStatus: 1,
    reservation_token_id: A9_TP_1.id
    )
Ke20_21 = ReservationSlot.create(
  reservation_target_id: sauna.id,
  day: 3,
  startTime: 2000,
  endTime: 2100,
  slotStatus: 1,
  reservation_token_id: C34_TP_1.id
)
Ke21_22 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 3,
    startTime: 2100,
    endTime: 2200,
    slotStatus: 1,
    reservation_token_id: C26_TP_1.id
    )
############33
To17_18 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 4,
    startTime: 1700,
    endTime: 1800,
    slotStatus: 0
    )
To18_19 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 4,
    startTime: 1800,
    endTime: 1900,
    slotStatus: 0
    )
To19_20 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 4,
    startTime: 1900,
    endTime: 2000,
    slotStatus: 1,
    reservation_token_id: A6_TP_1.id
    )
To20_21 = ReservationSlot.create(
  reservation_target_id: sauna.id,
  day: 4,
  startTime: 2000,
  endTime: 2100,
  slotStatus: 1,
  reservation_token_id: C25_TP_1.id
)
To21_22 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 4,
    startTime: 2100,
    endTime: 2200,
    slotStatus: 1,
    reservation_token_id: B20_TP_1.id
    )

###########
Pe17_18 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 5,
    startTime: 1700,
    endTime: 1800,
    slotStatus: 1,
    reservation_token_id: D38_TP_1.id
    )
Pe18_19 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 5,
    startTime: 1800,
    endTime: 1900,
    slotStatus: 1,
    reservation_token_id: B14_TP_1.id
    )
Pe19_20 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 5,
    startTime: 1900,
    endTime: 2000,
    slotStatus: 1,
    reservation_token_id: C28_TP_1.id
    )
Pe20_21 = ReservationSlot.create(
  reservation_target_id: sauna.id,
  day: 5,
  startTime: 2000,
  endTime: 2100,
  slotStatus: 1,
  reservation_token_id: A2_TP_1.id
)
Pe21_22 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 5,
    startTime: 2100,
    endTime: 2200,
    slotStatus: 0
    )

##################
La17_18 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 6,
    startTime: 1700,
    endTime: 1800,
    slotStatus: 0
    )
La18_19 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 6,
    startTime: 1800,
    endTime: 1900,
    slotStatus: 1,
    reservation_token_id: C34_TP_2.id
    )
La19_20 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 6,
    startTime: 1900,
    endTime: 2000,
    slotStatus: 1,
    reservation_token_id: B24_TP_1.id
    )
La20_21 = ReservationSlot.create(
  reservation_target_id: sauna.id,
  day: 6,
  startTime: 2000,
  endTime: 2100,
  slotStatus: 0
)
La21_22 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 6,
    startTime: 2100,
    endTime: 2200,
    slotStatus: 0
    )

###################################################

Kuivaushuone_Ma_8_13 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 1,
    startTime: 800,
    endTime: 1300,
    slotStatus: 1
    )
Kuivaushuone_Ma_13_18 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 1,
    startTime: 1300,
    endTime: 1800,
    slotStatus: 1
    )
    Kuivaushuone_Ma_18_23 = ReservationSlot.create(
        reservation_target_id: kuivaushuone.id,
        day: 1,
        startTime: 1800,
        endTime: 2300,
        slotStatus: 1
        )

##
Kuivaushuone_Ti_8_13 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 2,
    startTime: 800,
    endTime: 1300,
    slotStatus: 1
    )
Kuivaushuone_Ti_13_18 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 2,
    startTime: 1300,
    endTime: 1800,
    slotStatus: 1
    )
    Kuivaushuone_Ti_18_23 = ReservationSlot.create(
        reservation_target_id: kuivaushuone.id,
        day: 2,
        startTime: 1800,
        endTime: 2300,
        slotStatus: 1
        )

##
Kuivaushuone_Ke_8_13 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 3,
    startTime: 800,
    endTime: 1300,
    slotStatus: 1
    )
Kuivaushuone_Ke_13_18 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 3,
    startTime: 1300,
    endTime: 1800,
    slotStatus: 1
    )
    Kuivaushuone_Ke_18_23 = ReservationSlot.create(
        reservation_target_id: kuivaushuone.id,
        day: 3,
        startTime: 1800,
        endTime: 2300,
        slotStatus: 1
        )

##
Kuivaushuone_To_8_13 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 4,
    startTime: 800,
    endTime: 1300,
    slotStatus: 1
    )
Kuivaushuone_To_13_18 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 4,
    startTime: 1300,
    endTime: 1800,
    slotStatus: 1
    )
    Kuivaushuone_To_18_23 = ReservationSlot.create(
        reservation_target_id: kuivaushuone.id,
        day: 4,
        startTime: 1800,
        endTime: 2300,
        slotStatus: 1
        )

##
Kuivaushuone_Pe_8_13 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 5,
    startTime: 800,
    endTime: 1300,
    slotStatus: 1
    )
Kuivaushuone_Pe_13_18 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 5,
    startTime: 1300,
    endTime: 1800,
    slotStatus: 1
    )
    Kuivaushuone_Pe_18_23 = ReservationSlot.create(
        reservation_target_id: kuivaushuone.id,
        day: 5,
        startTime: 1800,
        endTime: 2300,
        slotStatus: 1
        )
##
Kuivaushuone_La_8_13 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 6,
    startTime: 800,
    endTime: 1300,
    slotStatus: 1
    )
Kuivaushuone_La_13_18 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 6,
    startTime: 1300,
    endTime: 1800,
    slotStatus: 1
    )
    Kuivaushuone_La_18_23 = ReservationSlot.create(
        reservation_target_id: kuivaushuone.id,
        day: 6,
        startTime: 1800,
        endTime: 2300,
        slotStatus: 1
        )
##
Kuivaushuone_Su_8_13 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 7,
    startTime: 800,
    endTime: 1300,
    slotStatus: 1
    )
Kuivaushuone_Su_13_18 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 7,
    startTime: 1300,
    endTime: 1800,
    slotStatus: 1
    )
Kuivaushuone_Su_18_23 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 7,
    startTime: 1800,
    endTime: 2300,
    slotStatus: 1
    )
