require "default_controller/version"
module DefaultController 
  def initialize
    res_name=self.class.name.sub("Controller", "")
     @model=res_name.singularize
     @objname =@model.downcase
     @objsname=res_name.downcase    
     super 
  end 
  def get_obj
    instance_variable_get("@#{@objname}")
  end
  def get_objs
    instance_variable_get("@#{@objsname}")
  end
  def list_all  
    Kernel.const_get(@model).send("all")  
  end  
  def find_by_id
    Kernel.const_get(@model).find(params[:id])
  end
  def new_obj
    Kernel.const_get(@model).send("new")
  end
  def create_obj
    Kernel.const_get(@model).send("new",params[@objname.to_sym])
  end  
  def find_obj
    instance_variable_set("@#{@objname}", find_by_id)
    get_obj
  end  
  
  def respond
      respond_with(find_obj)
  end 
  def respond_all
    respond_with(get_objs)  
  end

  def index 
    instance_variable_set("@#{@objsname}", list_all)  
    respond_all
  end   
  def new  
    instance_variable_set("@#{@objname}", new_obj)  
    get_obj    
  end
  def create
    instance_variable_set("@#{@objname}", create_obj)  
    get_obj.save
    respond_with(get_obj)  
  end

  def edit
    find_obj
    respond
  end
  def update
    find_obj.update_attributes(params[@objname.to_sym])
    respond
  end
  def show
    find_obj
    respond
  end
  def destroy
    find_obj.destroy
    redirect_to send("#{@objsname}_url")
  end
end
