module GenericFactory

    def self.included(base)
        base.extend(ClassMethods)
    end

    module ClassMethods
        def create(**args)
            new(**args)
        end
    end

    def initialize(**args)
        raise NotImplementedError
    end
end