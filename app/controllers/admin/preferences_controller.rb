class Admin::PreferencesController < ApplicationController

  def index
    @preference = Preference.first_or_create(artist_sort_order: "DESC",
                                             song_list_order: "DESC",
                                             allow_create_songs: true,
                                             allow_create_artists: true)
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(preference_params)
    redirect_to admin_preferences_path
  end

  private

  def preference_params
    params.require(:preference).permit(:artist_sort_order,
                                       :song_list_order,
                                       :allow_create_songs,
                                       :allow_create_artists)
  end
end
