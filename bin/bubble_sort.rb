#!/usr/bin/env ruby
# frozen_string_literal: true

array = [4, 3, 78, 2, 0, 2]
arraytwo = [4, 3, 78, 2, 0, 2, 2, 5, 7852, 54, 8]

def bubble_sort(array)
  go = array.length - 1
  switch_It = true
  while switch_It
    i = 0
    switch_It = false
    while i < go
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        switch_It = true
      end
      i += 1 # this is where we iterate & g2 next index
    end
  end
  array
end

def bubble_sort_by(array)
  go = array.length - 1
  switch_It = true
  while switch_It
    i = 0
    switch_It = false
    while i < go
      if yield(array[i], array [i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        switch_It = true
      end
      i += 1
    end
  end
  array
end

puts bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
