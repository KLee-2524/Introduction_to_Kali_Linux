output "lab_instances" {
    value = {
        for attendee, mod in module.kali-lab :
        attendee => {
            kali_name   = module.kali-lab["${attendee}"].kali_details.name
            kali_pub_ip = module.kali-lab["${attendee}"].kali_details.pub_ip
            
            target_name   = module.kali-lab["${attendee}"].target_details.name
            target_pri_ip = module.kali-lab["${attendee}"].target_details.pri_ip
        }
    }
}