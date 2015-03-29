class MaintenanceMailer < ApplicationMailer
  def new_maintenance_email(request)
    @request = request
    mail to: 'fh-maintenance@iccaustin.coop', subject: 'New Maintenance Request'
  end
end
