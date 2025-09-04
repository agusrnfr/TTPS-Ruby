def tiempo_en_palabras(time)
    hour = time.hour
    min = time.min
    str = String
    case min
        when 0..10
            str = "son las #{hour} en punto"
        when 11..20
            str = "son las #{hour} y cuarto"
        when 21..34
            str = "son las #{hour} y media"
        when 35..44
            hour += 1
            str = "son las #{hour} menos veinticinco"
        when 45..55
            hour += 1
            str = "son las #{hour} menos cuarto"
        when 56..59
            hour += 1
            str = "casi son las #{hour}"
    end
    
    if hour == 1
        str = str.gsub!("son", "es").gsub!("las", "la")
    end

    puts str.capitalize

end

tiempo_en_palabras(Time.new(2025, 10, 21, 10, 1))
tiempo_en_palabras(Time.new(2025, 10, 21, 9, 33))
tiempo_en_palabras(Time.new(2025, 10, 21, 8, 45))
tiempo_en_palabras(Time.new(2025, 10, 21, 6, 58))
tiempo_en_palabras(Time.new(2025, 10, 21, 0, 58))