class Vehicle < ApplicationRecord

  @colors = [
    'Branco',
    'Preto',
    'Prata',
    'Vermelho',
  ]

  validates :plate,presence: true,
                   length: { is: 8 },
                   format: { with: /\A[a-zA-Z]{3}\-\d{4}\z/}
                   #/\Aimage\/.*\z/

  validates :year,presence: true,
             inclusion: { in: 1900..Date.today.year },
             format: {   with: /(19|20)\d{2}/i,
              message: "should be a four-digit year"
             }

  validates :color,presence: true, inclusion: { in:@colors}

  validates :vehicle_model,presence: true
  belongs_to :vehicle_model

  paginates_per 10

  scope :by_plate, ->(plate){
      unless plate.present?
        return all
      end
      where "plate like ?","%#{plate}%"
    }

end
