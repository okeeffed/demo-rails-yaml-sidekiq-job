require 'yaml'

class TemplateJob
  include Sidekiq::Job

  def perform(template_group, template_name)
    # Do something
    p "TemplateJob started with args #{template_group} #{template_name}"

    template = YAML.safe_load(File.read(File.join(Rails.root, 'templates', template_group, "#{template_name}.yaml")))

    p "Template name: #{template['name']}"
    p "Template description: #{template['description']}"

    template['people'].each do |person|
      person = Person.new(name: person['name'], age: person['age']).save
      p "Person #{person['name']} could not be saved" if person.nil?
    end

    # Will display current time, milliseconds included
    p "TemplateJob #{Time.now.strftime('%F - %H:%M:%S.%L')}"
  end
end
