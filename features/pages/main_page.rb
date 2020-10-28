# frozen_string_literal: true

class MainPage < SitePrism::Page
  set_url '/'
  element :logo_image, '#div-img'
  element :search, '#search-container'
  element :login, '#div-controlLogin'
  element :cart, '#div-actionCart'
  element :menu, '#div-menus__container'
  element :banner, '#region-custom-stack-banner-points', match: :first
  element :chat, '#chat_logo'
  element :footer, '#div-footer'

  def index_page?
    logo_image.present?
    search.present?
    login.present?
    cart.present?
    menu.present?
    banner.present?
    chat.present?
    footer.present?
  end
end
