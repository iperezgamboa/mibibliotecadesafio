class Book < ApplicationRecord
    enum status: ['en estante', 'prestado'] # enum para fijar estado 
end
