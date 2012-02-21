Spree::Admin::GeneralSettingsController.class_eval do |variable|

  def show_with_custom_prefs
    show_without_custom_prefs
    @preferences << :big_title
  end
  alias_method_chain :show, :custom_prefs

  def edit_with_custom_prefs
    edit_without_custom_prefs
    @preferences << :big_title
  end
  alias_method_chain :edit, :custom_prefs

end
