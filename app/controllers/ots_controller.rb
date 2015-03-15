class OtsController < ApplicationController
  def initialize
    @opentok = OpenTok::OpenTok.new ENV["API_KEY"], ENV["API_SECRET"]
  end

  def generate_session_id
    session = @opentok.create_session :media_mode => :routed
    Session.create(ost_session_id: session.session_id, name: params[:session_name], description: params[:session_name])
    render :json => session
  end

  def generate_token
    token = @opentok.generate_token(
      params[:ost_session_id], {
        :role        => params[:role].to_sym,
        :expire_time => Time.now.to_i + (7 * 24 * 60 * 60),
        :data        => params[:data]
      }
    );
    tokenData = {token_id: token}
    render :json => tokenData
  end

  def publisher
    render :layout => "application"
  end

  def subscriber
  	render :layout => "application"
  end

  def video_call
    render :layout => "application"
  end

  def record_session
    archive = @opentok.archives.create params[:ost_session_id]
    render :json => archive
  end
end
