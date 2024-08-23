module XrayHelper
  def module_import_tag(*modules)
    return unless Rails.application.config.respond_to?(:importmap)

    <<-HTML.html_safe
      <script type="module">
        #{modules.map { |m| "import \"#{m}\";" }.join("\n")}
      </script>
    HTML
  end
end
