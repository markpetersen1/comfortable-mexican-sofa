# frozen_string_literal: true

class Comfy::Admin::BaseController < ComfortableMexicanSofa.config.admin_base_controller.to_s.constantize

  include Comfy::Paginate

  # Authentication module must have `authenticate` method
  include ComfortableMexicanSofa.config.admin_auth.to_s.constantize

  # Authorization module must have `authorize` method
  include ComfortableMexicanSofa.config.admin_authorization.to_s.constantize

  skip_before_action :verify_authenticity_token

  helper Comfy::Admin::CmsHelper
  helper Comfy::CmsHelper

  layout "comfy/admin/cms"

end
