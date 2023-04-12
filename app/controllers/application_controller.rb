class ApplicationController < ActionController::Base
  def blank_square_form
    render ({ :template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
    @num = params.fetch("number").to_f
    @square_of_num = @num * @num
    render ({ :template => "calculation_templates/square_results.html.erb"})
  end

  def blank_square_root_form
    render ({ :template => "calculation_templates/squareroot_form.html.erb"})
  end

  def calculate_square_root
    @num = params.fetch("number").to_f
    @square_root_of_num = @num ** 0.5
    render ({ :template => "calculation_templates/square_root_results.html.erb"})
  end

  def blank_payment_form
    render ({ :template => "calculation_templates/payment_form.html.erb"})
  end

  def calculate_payment
    @apr = params.fetch("apr").to_i
    @years = params.fetch("years").to_i
    @principal = params.fetch("principal").to_i
    render ({ :template => "calculation_templates/payment_results.html.erb"})
  end

  def blank_random_form
    render ({ :template => "calculation_templates/random_form.html.erb"})
  end
end
