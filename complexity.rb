class Example
  # AbcSize
  # Aggregates the number of assignments, branches and
  # conditionals in a unit of code.
  # score: 7.21
  def abc_example
    @a = 1 + 2
    @b = 3 + 4 / 5
    @c = 6 - 7 * 8
    @d = 9 / 10
  end

  # CyclomaticComplexity
  # count of the linearly independent
  # score: 6
  def cyclomatic_complexity
    if (num = Random.rand(10)) > 5
      case num
      when num.zero?
        10
      when num > 0
        if num * 10 / 2 > 50
          if num * num > 100
            num * num
          else
            (num * num) * 2
          end
        else
          num + num
        end
      end
    else
      Random.rand(100)
    end
  end

  # ParameterLists
  def parameter_lists(a, b, c, d: 1, e: 2)
    a + b - c * d / e
  end

  # PerceivedComplexity
  # score: 7
  def perceived_complexity        # 1
    var = 5
    if 1 > 2                      # 1
      case var                    # 2 (0.8 + 4 * 0.2, rounded)
      when 1 then p "1"
      when 2 then p "2"
      when 3 then p "3"
      when 4..10 then p "more"
      end
    else                          # 1
      p "wait" until true && true   # 2
    end                           # ===
  end                             # 7 complexity points
end
