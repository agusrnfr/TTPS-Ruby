module Countable
    def self.included(base)
        base.extend(ClassMethods)
    end

    module ClassMethods
        def count_invocations_of(sym)
            alias_method "original_#{sym}".to_sym, sym
            define_method(sym) do |*args, &block|
                @__method_invocations ||= Hash.new(0)
                @__method_invocations[sym] += 1

                send("original_#{sym}", *args, &block)
            end
        end
    end

    def invoked?(sym)
        @__method_invocations && @__method_invocations[sym].to_i > 0 || false
    end

    def invoked(sym)
        @__method_invocations ? @__method_invocations[sym].to_i : 0
    end
end

class Greeter
    include Countable
    def hi
        puts 'Hey!'
    end
    def bye
        puts 'See you!'
    end
    count_invocations_of :hi
end