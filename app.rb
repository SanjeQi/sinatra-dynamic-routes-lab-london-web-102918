require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get '/square/:number' do
    @sqr = params[:number].to_i * params[:number].to_i
    "#{@sqr}"
  end

  get '/say/:number/:phrase' do 
    @num_phr = params[:phrase] * params[:number].to_i
    "#{@num_phr}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    if @operation == "add"
      (@n1 + @n2).to_s
    elsif @operation == "subtract"
      (@n1 - @n2).to_s
    elsif @operation == "multiply"
      (@n1 * @n2).to_s
    elsif @operation == "divide"
      (@n1 / @n2).to_s
    end
  end
  
  

end