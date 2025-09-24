def ejecutar_con_manejador(*args)
    begin
        yield(*args)
        :ok
    rescue RuntimeError
        puts "Hay algo mal que no anda bien"
        :rt
    rescue NoMethodError => e
        puts "Y este método?"
        puts e.message
        :nm
    rescue => e
        puts "Y ahora?"
        raise e
    end
end