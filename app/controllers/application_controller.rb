class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
        	added_attrs = [:email, :password, :password_confirmation, :cpf, :dtnasc, :nome, :sexo, :telefone, :celular, :cep, :endereco, :complemento, :cidade, :bairro]
            devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        end
end
