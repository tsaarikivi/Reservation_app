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
    category: 1,
    owner_id: omistaja.id
    )

    kuivaushuone = ReservationTarget.create(
        name: 'Kuivaushuone',
        timeWindowInDays: 3,
        category: 2,
        owner_id: omistaja.id
        )

    autopesu = ReservationTarget.create(
        name: 'Autopesu',
        timeWindowInDays: 3,
        category: 1,
        owner_id: omistaja.id
        )

######################################################
# Users
token_type_permanent = 1
token_type_use_once = 2
######################################################
A1 = User.create(
    name: 'A1',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   A1_T10 = ReservationToken.create(
        user_id: A1.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_permanent
        )
   A1_T11 = ReservationToken.create(
            user_id: A1.id,
            reservation_target_id: sauna.id,
            tokenType: token_type_use_once
            )


A2 = User.create(
    name: 'A2',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )


A3 = User.create(
    name: 'A3',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   A3_T1 = ReservationToken.create(
       user_id: A3.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   A3_T2 = ReservationToken.create(
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
   A4_T1 = ReservationToken.create(
       user_id: A4.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   A4_T2 = ReservationToken.create(
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
   A5_T1 = ReservationToken.create(
       user_id: A5.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   A5_T2 = ReservationToken.create(
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
   A6_T1 = ReservationToken.create(
       user_id: A6.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   A6_T2 = ReservationToken.create(
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
   A7_T1 = ReservationToken.create(
       user_id: A7.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   A7_T2 = ReservationToken.create(
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
   A8_T1 = ReservationToken.create(
       user_id: A8.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   A8_T2 = ReservationToken.create(
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
   A9_T1 = ReservationToken.create(
       user_id: A9.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   A9_T2 = ReservationToken.create(
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
   A10_T1 = ReservationToken.create(
       user_id: A10.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   A10_T2 = ReservationToken.create(
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
   A11_T1 = ReservationToken.create(
       user_id: A11.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   A11_T2 = ReservationToken.create(
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
   A12_T1 = ReservationToken.create(
       user_id: A12.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   A12_T2 = ReservationToken.create(
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
   B13_T1 = ReservationToken.create(
       user_id: B13.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   B13_T2 = ReservationToken.create(
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
   B14_T1 = ReservationToken.create(
       user_id: B14.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   B14_T2 = ReservationToken.create(
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
   B15_T1 = ReservationToken.create(
       user_id: B15.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   B15_T2 = ReservationToken.create(
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
   B16_T1 = ReservationToken.create(
       user_id: B16.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   B16_T2 = ReservationToken.create(
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
   B17_T1 = ReservationToken.create(
       user_id: B17.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   B17_T2 = ReservationToken.create(
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
   B18_T1 = ReservationToken.create(
       user_id: B18.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   B18_T2 = ReservationToken.create(
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
   B19_T1 = ReservationToken.create(
       user_id: B19.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   B19_T2 = ReservationToken.create(
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
   B20_T1 = ReservationToken.create(
       user_id: B20.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   B20_T2 = ReservationToken.create(
       user_id: B13.id,
       reservation_target_id: kuivaushuone.id,
       tokenType: token_type_use_once
       )

B21 = User.create(
    name: 'B21',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   B21_T1 = ReservationToken.create(
       user_id: B21.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   B21_T2 = ReservationToken.create(
       user_id: B13.id,
       reservation_target_id: kuivaushuone.id,
       tokenType: token_type_use_once
       )

B22 = User.create(
    name: 'B22',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   B22_T1 = ReservationToken.create(
       user_id: B22.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   B22_T2 = ReservationToken.create(
       user_id: B13.id,
       reservation_target_id: kuivaushuone.id,
       tokenType: token_type_use_once
       )

B23 = User.create(
    name: 'B23',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   B23_T1 = ReservationToken.create(
       user_id: B23.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   B23_T2 = ReservationToken.create(
       user_id: B13.id,
       reservation_target_id: kuivaushuone.id,
       tokenType: token_type_use_once
       )

B24 = User.create(
    name: 'B24',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   B24_T1 = ReservationToken.create(
       user_id: B24.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   B24_T2 = ReservationToken.create(
       user_id: B13.id,
       reservation_target_id: kuivaushuone.id,
       tokenType: token_type_use_once
       )

C25 = User.create(
    name: 'C25',
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
    C25_T10 = ReservationToken.create(
        user_id: C25.id,
        reservation_target_id: sauna.id,
        tokenType: token_type_permanent
        )
        C25_T11 = ReservationToken.create(
            user_id: C25.id,
            reservation_target_id: sauna.id,
            tokenType: token_type_use_once
            )
            C25_T12 = ReservationToken.create(
                user_id: C25.id,
                reservation_target_id: sauna.id,
                tokenType: token_type_use_once
                )
   C25_T2 = ReservationToken.create(
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
   C26_T1 = ReservationToken.create(
       user_id: C26.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   C26_T2 = ReservationToken.create(
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
   C27_T1 = ReservationToken.create(
       user_id: C27.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   C27_T2 = ReservationToken.create(
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
   C28_T1 = ReservationToken.create(
       user_id: C28.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   C28_T2 = ReservationToken.create(
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
   C29_T1 = ReservationToken.create(
       user_id: C29.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   C29_T2 = ReservationToken.create(
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
   C30_T1 = ReservationToken.create(
       user_id: C30.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   C30_T2 = ReservationToken.create(
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
   C31_T1 = ReservationToken.create(
       user_id: C31.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   C31_T2 = ReservationToken.create(
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
   C32_T1 = ReservationToken.create(
       user_id: C32.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   C32_T2 = ReservationToken.create(
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
   C33_T1 = ReservationToken.create(
       user_id: C33.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   C33_T2 = ReservationToken.create(
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
   C34_T1 = ReservationToken.create(
       user_id: C34.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   C34_T2 = ReservationToken.create(
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
   C35_T1 = ReservationToken.create(
       user_id: C35.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   C35_T2 = ReservationToken.create(
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
   C36_T1 = ReservationToken.create(
       user_id: C36.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   C36_T2 = ReservationToken.create(
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
   D37_T1 = ReservationToken.create(
       user_id: D37.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   D37_T2 = ReservationToken.create(
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
   D38_T1 = ReservationToken.create(
       user_id: D38.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   D38_T2 = ReservationToken.create(
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
   D39_T1 = ReservationToken.create(
       user_id: D39.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   D39_T2 = ReservationToken.create(
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
   D40_T1 = ReservationToken.create(
       user_id: D40.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   D40_T2 = ReservationToken.create(
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
   D41_T1 = ReservationToken.create(
       user_id: D41.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   D41_T2 = ReservationToken.create(
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
   D42_T1 = ReservationToken.create(
       user_id: D42.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   D42_T2 = ReservationToken.create(
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
   D43_T1 = ReservationToken.create(
       user_id: D43.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   D43_T2 = ReservationToken.create(
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
   D44_T1 = ReservationToken.create(
       user_id: D44.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   D44_T2 = ReservationToken.create(
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
   D45_T1 = ReservationToken.create(
       user_id: D45.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   D45_T2 = ReservationToken.create(
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
   D46_T1 = ReservationToken.create(
       user_id: D46.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   D46_T2 = ReservationToken.create(
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
   D47_T1 = ReservationToken.create(
       user_id: D47.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   D47_T2 = ReservationToken.create(
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
   D48_T1 = ReservationToken.create(
       user_id: D48.id,
       reservation_target_id: sauna.id,
       tokenType: token_type_permanent
       )
   D48_T2 = ReservationToken.create(
       user_id: D48.id,
       reservation_target_id: kuivaushuone.id,
       tokenType: token_type_use_once
       )

#####################################################
# Reservation slots
#####################################################
Ma17_18 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 1,
    startTime: 1700,
    endTime: 1800
    )
Ma18_19 = ReservationSlot.create(
        reservation_target_id: sauna.id,
        day: 1,
        startTime: 1800,
        endTime: 1900
        )
Ma19_20 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 1,
    startTime: 1900,
    endTime: 2000,
    reservation_token_id: A1_T10.id
    )
Ma20_21 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 1,
    startTime: 2000,
    endTime: 2100
    )
Ma21_22 = ReservationSlot.create(
        reservation_target_id: sauna.id,
        day: 1,
        startTime: 2100,
        endTime: 2200
        )
Ti17_18 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 2,
    startTime: 1700,
    endTime: 1800
    )
Ti18_19 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 2,
    startTime: 1800,
    endTime: 1900
    )
Ti19_20 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 2,
    startTime: 1900,
    endTime: 2000
    )
Ti20_21 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 2,
    startTime: 2000,
    endTime: 2100
    )
Ke17_18 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 3,
    startTime: 1700,
    endTime: 1800
    )
Ke18_19 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 3,
    startTime: 1800,
    endTime: 1900
    )
Ke19_20 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 3,
    startTime: 1900,
    endTime: 2000
    )
Ke20_21 = ReservationSlot.create(
  reservation_target_id: sauna.id,
  day: 3,
  startTime: 2000,
  endTime: 2100
)
Ke21_22 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 3,
    startTime: 2100,
    endTime: 2200
    )
Ke22_23 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 3,
    startTime: 2200,
    endTime: 2300
    )
To18_19 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 4,
    startTime: 1800,
    endTime: 1900
    )
To19_20 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 4,
    startTime: 1900,
    endTime: 2000
    )
To20_21 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 4,
    startTime: 2000,
    endTime: 2100,
    reservation_token_id: C25_T10.id
    )
Pe18_19 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 5,
    startTime: 1800,
    endTime: 1900
    )
Pe19_20 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 5,
    startTime: 1900,
    endTime: 2000
    )
Pe20_21 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 5,
    startTime: 2000,
    endTime: 2100
    )
La18_19 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 6,
    startTime: 1800,
    endTime: 1900
    )
La19_20 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 6,
    startTime: 1900,
    endTime: 2000
    )
La20_21 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 6,
    startTime: 2000,
    endTime: 2100
    )
Su18_19 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 7,
    startTime: 1800,
    endTime: 1900
    )
Su19_20 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 7,
    startTime: 1900,
    endTime: 2000
    )
Su20_21 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 7,
    startTime: 2000,
    endTime: 2100
    )

#########################
## Kuivaushuone
########################
KMa18_19 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 1,
    startTime: 1800,
    endTime: 1900
    )
KMa19_20 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 1,
    startTime: 1900,
    endTime: 2000
    )
KMa20_21 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 1,
    startTime: 2000,
    endTime: 2100
    )
KTi18_19 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 2,
    startTime: 1800,
    endTime: 1900
    )
KTi19_20 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 2,
    startTime: 1900,
    endTime: 2000
    )
KTi20_21 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 2,
    startTime: 2000,
    endTime: 2100
    )
KKe18_19 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 3,
    startTime: 1800,
    endTime: 1900
    )
KKe19_20 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 3,
    startTime: 1900,
    endTime: 2000
    )
KKe20_21 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 3,
    startTime: 2000,
    endTime: 2100
    )
KTo18_19 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 4,
    startTime: 1800,
    endTime: 1900
    )
KTo19_20 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 4,
    startTime: 1900,
    endTime: 2000
    )
KTo20_21 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 4,
    startTime: 2000,
    endTime: 2100
    )
KPe18_19 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 5,
    startTime: 1800,
    endTime: 1900
    )
KPe19_20 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 5,
    startTime: 1900,
    endTime: 2000
    )
KPe20_21 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 5,
    startTime: 2000,
    endTime: 2100
    )
KLa18_19 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 6,
    startTime: 1800,
    endTime: 1900
    )
KLa19_20 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 6,
    startTime: 1900,
    endTime: 2000
    )
KLa20_21 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 6,
    startTime: 2000,
    endTime: 2100
    )
KSu18_19 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 7,
    startTime: 1800,
    endTime: 1900
    )
KSu19_20 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 7,
    startTime: 1900,
    endTime: 2000
    )
KSu20_21 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 7,
    startTime: 2000,
    endTime: 2100
    )
