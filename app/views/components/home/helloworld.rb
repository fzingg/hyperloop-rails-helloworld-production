module Components
  module Home

  class Helloworld < Hyperloop::Component

    render(DIV) do
    
    P do
      "You #{state.liked ? 'like' : 'haven\'t liked'} this. Click to toggle."
    end.on(:click) do
      mutate.liked !state.liked
    end
  end
  end

  end
end