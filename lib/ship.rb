require 'board'

class Ship

  attr_reader :location, :sunk

  def initialize
    @location = []
    @sunk = false
  end

  def assign(cell)
    @location << cell
  end


  def on_ship?(cell)
    if @location.include?(cell)
      true
    else
      false
    end
  end

  def first_row
    [0,1, 2, 3]
  end

  def second_row
    [4, 5, 6, 7]
  end

  def third_row
    [8, 9, 10, 11]
  end

  def fourth_row
    [12, 13, 14, 15]
  end

  def in_first_row?
    @location.all do |cell|
      first_row.include?(cell)
    end
  end

  def in_second_row?
    @location.all do |cell|
      second_row.include?(cell)
    end
  end

  def in_third_row?
    @location.all do |cell|
      third_row.include?(cell)
    end
  end

  def in_fourth_row?
    @location.all do |cell|
      fourth_row.include?(cell)
    end
  end

  def in_row?
    if in_first_row? || in_second_row? || in_third_row? || in_fourth_row?
      true
    else
      false
    end
  end

  def first_column
    [0, 4, 8, 12]
  end

  def second_column
    [1, 5, 9, 13]
  end

  def third_column
    [2, 6, 10, 14]
  end

  def fourth_column
    [3, 7, 11, 15]
  end

  def in_first_column?
    @location.all do |cell|
      first_column.include?(cell)
    end
  end

  def in_second_column?
    @location.all do |cell|
      second_column.include?(cell)
    end
  end

  def in_third_column?
    @location.all do |cell|
      third_column.include?(cell)
    end
  end

  def in_fourth_column?
    @location.all do |cell|
      fourth_column.include?(cell)
    end
  end

  def in_column?
    if in_first_column? || in_second_column? || in_third_column? || in_fourth_column?
      true
    else
      false
    end
  end

  def h_or_v_postion?
    if in_row? || in_column?
      true
    else
      false
    end
  end



end
