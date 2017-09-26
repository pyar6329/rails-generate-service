class ServiceGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def copy_base_service_file
    copy_file 'base.rb', 'app/services/base_service.rb' unless File.exist?('app/services/base_service.rb')
  end

  def copy_service_file
    template 'app.rb', File.join('app/services', class_path, "#{file_name}_service.rb")
  end

  def copy_spec_file
    template 'spec.rb', File.join('spec/services', class_path, "#{file_name}_service_spec.rb")
  end
end
