# Seed data for Reservation_app
# Data aims to describe the Hakolahdentie 2 sauna and dryer.
######################################################
# Administrators
######################################################
isannoitsija = Admin.create(
    email: 'tuomo.saarikivi@outlook.com',
    password: '76lkkg45',
    password_confirmation: '76lkkg45'
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
    password: 'a1h8doho',
    password_confirmation: 'a1h8doho'
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
    password: 'a2k48jfn',
    password_confirmation: 'a2k48jfn'
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
    password: 'a3ohs6hr',
    password_confirmation: 'a3ohs6hr'
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
    password: 'a4kyns85',
    password_confirmation: 'a4kyns85'
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
    password: 'a5s2kb47',
    password_confirmation: 'a5s2kb47'
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
    password: 'a6ken7um',
    password_confirmation: 'a6ken7um'
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
    password: 'a7wkn4js',
    password_confirmation: 'a7wkn4js'
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
    password: 'a8he0mg1',
    password_confirmation: 'a8he0mg1'
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
    password: 'a9hd9h3n',
    password_confirmation: 'a9hd9h3n'
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
    password: 'a10hn38h',
    password_confirmation: 'a10hn38h'
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
    password: 'a11d9jdy',
    password_confirmation: 'a11d9jdy'
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
    password: 'a12fr9n3',
    password_confirmation: 'a12fr9n3'
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
    password: 'b13fd8k3',
    password_confirmation: 'b13fd8k3'
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
    password: 'b14leg6s',
    password_confirmation: 'b14leg6s'
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
    password: 'b15s9ken',
    password_confirmation: 'b15s9ken'
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
    password: 'b16lwnf5',
    password_confirmation: 'b16lwnf5'
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
    password: 'b17s8fk3',
    password_confirmation: 'b17s8fk3'
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
    password: 'b18ynw5d',
    password_confirmation: 'b18ynw5d'
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
    password: 'b19usl8d',
    password_confirmation: 'b19usl8d'
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
    password: 'b20ldyem',
    password_confirmation: 'b20ldyem'
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
    password: 'b218ken7',
    password_confirmation: 'b218ken7'
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
    password: 'b22a8k4n',
    password_confirmation: 'b22a8k4n'
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
    password: 'b23k3n56',
    password_confirmation: 'b23k3n56'
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
    password: 'b24kf64m',
    password_confirmation: 'b24kf64m'
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
    password: 'c25toot1',
    password_confirmation: 'c25toot1'
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
    password: 'c26hdm7s',
    password_confirmation: 'c26hdm7s'
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
    password: 'c27dh48s',
    password_confirmation: 'c27dh48s'
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
    password: 'c28t4s84',
    password_confirmation: 'c28t4s84'
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
    password: 'c29yh4k3',
    password_confirmation: 'c29yh4k3'
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
    password: 'c30u5msy',
    password_confirmation: 'c30u5msy'
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
    password: 'c31ke6hf',
    password_confirmation: 'c31ke6hf'
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
    password: 'c32k6sjr',
    password_confirmation: 'c32k6sjr'
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
    password: 'c33i6snr',
    password_confirmation: 'c33i6snr'
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
    password: 'c34k7snt',
    password_confirmation: 'c34k7snt'
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
    password: 'c35kj47s',
    password_confirmation: 'c35kj47s'
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
    password: 'c36k7snt',
    password_confirmation: 'c36k7snt'
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
    password: 'd37uem48',
    password_confirmation: 'd37uem48'
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
    password: 'd389atnr',
    password_confirmation: 'd389atnr'
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
    password: 'd39me7sk',
    password_confirmation: 'd39me7sk'
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
    password: 'd40m29jd',
    password_confirmation: 'd40m29jd'
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
    password: 'd41me6sj',
    password_confirmation: 'd41me6sj'
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
    password: 'd42sl8dt',
    password_confirmation: 'd42sl8dt'
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
    password: 'd43n29hd',
    password_confirmation: 'd43n29hd'
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
    password: 'd44p7snq',
    password_confirmation: 'd44p7snq'
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
    password: 'd45kq97s',
    password_confirmation: 'd45kq97s'
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
    password: 'd46aoem6',
    password_confirmation: 'd46aoem6'
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
    password: 'd47a9n3i',
    password_confirmation: 'd47a9n3i'
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
    password: 'd48s8nts',
    password_confirmation: 'd48s8nts'
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
Ti17_18 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 2,
    startTime: 1700,
    endTime: 1800,
    slotStatus: 0
    )
Ti18_19 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 2,
    startTime: 1800,
    endTime: 1900,
    slotStatus: 0
    )
Ti19_20 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 2,
    startTime: 1900,
    endTime: 2000,
    slotStatus: 1
    )
Ti20_21 = ReservationSlot.create(
  reservation_target_id: sauna.id,
  day: 1,
  startTime: 2000,
  endTime: 2100,
  slotStatus: 1
)
Ti21_22 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 2,
    startTime: 2100,
    endTime: 2200,
    slotStatus: 1
    )

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

Kuivaushuone_Ma_8_15 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 1,
    startTime: 800,
    endTime: 1500,
    slotStatus: 1
    )
    Kuivaushuone_Ma_15_22 = ReservationSlot.create(
        reservation_target_id: kuivaushuone.id,
        day: 1,
        startTime: 1500,
        endTime: 2200,
        slotStatus: 1
        )

##
Kuivaushuone_Ti_8_15 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 2,
    startTime: 800,
    endTime: 1500,
    slotStatus: 1
    )
    Kuivaushuone_Ti_15_22 = ReservationSlot.create(
        reservation_target_id: kuivaushuone.id,
        day: 2,
        startTime: 1500,
        endTime: 2200,
        slotStatus: 1
        )

##
Kuivaushuone_Ke_8_15 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 3,
    startTime: 800,
    endTime: 1500,
    slotStatus: 1
    )
    Kuivaushuone_Ke_15_22 = ReservationSlot.create(
        reservation_target_id: kuivaushuone.id,
        day: 3,
        startTime: 1500,
        endTime: 2200,
        slotStatus: 1
        )

##
Kuivaushuone_To_8_15 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 4,
    startTime: 800,
    endTime: 1500,
    slotStatus: 1
    )
    Kuivaushuone_To_15_22 = ReservationSlot.create(
        reservation_target_id: kuivaushuone.id,
        day: 4,
        startTime: 1500,
        endTime: 2200,
        slotStatus: 1
        )

##
Kuivaushuone_Pe_8_15 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 5,
    startTime: 800,
    endTime: 1500,
    slotStatus: 1
    )
    Kuivaushuone_Pe_15_22 = ReservationSlot.create(
        reservation_target_id: kuivaushuone.id,
        day: 5,
        startTime: 1500,
        endTime: 2200,
        slotStatus: 1
        )
##
Kuivaushuone_La_8_15 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 6,
    startTime: 800,
    endTime: 1500,
    slotStatus: 1
    )
    Kuivaushuone_La_15_22 = ReservationSlot.create(
        reservation_target_id: kuivaushuone.id,
        day: 6,
        startTime: 1500,
        endTime: 2200,
        slotStatus: 1
        )
##
Kuivaushuone_Su_8_15 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 7,
    startTime: 800,
    endTime: 1500,
    slotStatus: 1
    )
Kuivaushuone_Su_15_22 = ReservationSlot.create(
    reservation_target_id: kuivaushuone.id,
    day: 7,
    startTime: 1500,
    endTime: 2200,
    slotStatus: 1
    )
