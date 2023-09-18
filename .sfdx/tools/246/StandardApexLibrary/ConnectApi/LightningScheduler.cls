global class LightningScheduler {
	global Object clone() { }
	global static ConnectApi.ServiceAppointmentOutput createServiceAppointment(ConnectApi.CreateServiceAppointmentInput createServiceAppointmentInput) { }
	global static ConnectApi.ServiceAppointmentOutput updateServiceAppointment(ConnectApi.UpdateServiceAppointmentInput updateServiceAppointmentInput) { }
	global static ConnectApi.WaitlistCheckInOutput waitlistCheckIn(ConnectApi.WaitlistCheckInInput waitlistCheckInInput) { }
	global static ConnectApi.WaitlistOutput waitlists(List<String> waitlistIds, String serviceTerritoryId, Boolean isActive, Integer maxLimit, Integer offset) { }

}