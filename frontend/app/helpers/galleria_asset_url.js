import Ember from 'ember';

export function galleriaAssetUrl(file) {
  return window.assets.galleria[file];
}

export default Ember.Handlebars.makeBoundHelper(galleriaAssetUrl);
