class ShopController < ApplicationController
    def show
        @Shop = Shop.find_by(id: params[:id])
      end
      def new
        @Shop = Shop.new
        end
        def create
          @Shop = Shop.new(Shop_params)
          if @Shop.save
            flash[:success] = "Welcome to the Sample App!"
            redirect_to @Shop
          # Handle a successful save.
          else
          render 'new', status: :unprocessable_entity
          end
          end
          private
          def Shop_params
          params.require(:Shop).permit(:name, :email,:avatar,:homesite,:description)
          end
          def destroy
            Shop.find(params[:id]).destroy
            redirect_to @@current_path
        end
          end

