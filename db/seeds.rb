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

A1 = User.create({name: 'A1', owner_id: omistaja.owner_id})
   # A1_T1 = Token.create(user_id: A1.user_id, reservationTarget_id: sauna.reservationTarget_id)
   # A1_T2 = Token.create(user_id: A1.user_id, reservationTarget_id: kuivaushuone.reservationTarget_id)
C25 = User.create({name: 'C25', owner_id: omistaja.owner_id})
   # C25_T1 = Token.create(user_id: C25.user_id, reservationTarget_id: sauna.reservationTarget_id)
   # C25_T2 = Token.create(user_id: C25.user_id, reservationTarget_id: kuivaushuone.reservationTarget_id)
    

# Ma18_19 = Slot.create(reservationTarget_id: sauna.reservationTarget_id, day: 1, startTime: 1800, endTime: 1900)    
# Ma19_20 = Slot.create(reservationTarget_id: sauna.reservationTarget_id, day: 1, startTime: 1900, endTime: 2000, token_id: A1_T1.token_id)    
# Ma20_21 = Slot.create(reservationTarget_id: sauna.reservationTarget_id, day: 1, startTime: 2000, endTime: 2100)    
# Ti18_19 = Slot.create(reservationTarget_id: sauna.reservationTarget_id, day: 2, startTime: 1800, endTime: 1900)    
# Ti19_20 = Slot.create(reservationTarget_id: sauna.reservationTarget_id, day: 2, startTime: 1900, endTime: 2000)    
# Ti20_21 = Slot.create(reservationTarget_id: sauna.reservationTarget_id, day: 2, startTime: 2000, endTime: 2100)    
# To20_21 = Slot.create(reservationTarget_id: sauna.reservationTarget_id, day: 4, startTime: 2000, endTime: 2100, token_id: C25_T1.token_id)
    
    