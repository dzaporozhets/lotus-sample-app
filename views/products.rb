module Products
  class Index
    include Lotus::View
    format :haml
    layout ApplicationLayout
  end

  class Show
    include Lotus::View
    format :haml

    # This cause undefined method `new' for nil:NilClass
    # at https://github.com/lotus/view/blob/master/lib/lotus/view/rendering.rb#L131
    #
    #layout :application

    layout ApplicationLayout
  end
end
