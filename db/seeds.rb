# Seed data for Reservation_app
# Data aims to describe the Hakolahdentie 2 sauna and dryer.


isannoitsija = Admin.create(
    email: 'liisa.anttila@isannointisaarinen.fi',
    password: 'salasana',
    password_confirmation: 'salasana'
    )

omistaja = Owner.create(
    name: 'As Oy Hakolahdentie 2', 
    admin_id: isannoitsija.id
    )

sauna = ReservationTarget.create(
    name: 'Sauna', 
    timeWindowInDays: 7, 
    category: 1
    )
    
kuivaushuone = ReservationTarget.create(
    name: 'Kuivaushuone', 
    timeWindowInDays: 3, 
    category: 2
    )

A1 = User.create(
    name: 'A1', 
    owner_id: omistaja.id,
    password: 'salasana',
    password_confirmation: 'salasana'
    )
   A1_T1 = ReservationToken.create(
       user_id: A1.id, 
       reservation_target_id: sauna.id
       )
   A1_T2 = ReservationToken.create(
       user_id: A1.id, 
       reservation_target_id: kuivaushuone.id
       )
   
C25 = User.create(
    name: 'C25', 
    owner_id: omistaja.id
    )
   C25_T1 = ReservationToken.create(
       user_id: C25.id, 
       reservation_target_id: sauna.id
       )
   C25_T2 = ReservationToken.create(
       user_id: C25.id, 
       reservation_target_id: kuivaushuone.id
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
    reservation_token_id: A1_T1.id
    )    
Ma20_21 = ReservationSlot.create(
    reservation_target_id: sauna.id, 
    day: 1, 
    startTime: 2000, 
    endTime: 2100
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
    startTime: 1900, endTime: 2000
    )    
Ti20_21 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 2,
    startTime: 2000,
    endTime: 2100
    )    
To20_21 = ReservationSlot.create(
    reservation_target_id: sauna.id,
    day: 4, 
    startTime: 2000, 
    endTime: 2100, 
    reservation_token_id: C25_T1.id)
    
    