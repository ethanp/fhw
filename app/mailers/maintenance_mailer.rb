class MaintenanceMailer < ApplicationMailer
  def new_maintenance_email(request)
    @request = request
    mail to: 'fh-maintenance@iccaustin.coop', subject: "New Maintenance Request: #{request.name}"
  end
  def request_completed(request)
    @request = request
    mail to: request.user.email, subject: "Maintenance Request #{request.name} was Completed"
  end
end
