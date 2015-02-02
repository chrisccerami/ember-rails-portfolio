import Ember from 'ember';
import startApp from 'ember-rails-portfolio/tests/helpers/start-app';
import Pretender from 'pretender';

var App, server;

module('Integration - Projects Page', {
  setup: function() {
    App = startApp();
    var projects = [
      {
        id: 1,
        name: 'Scene Hub'
      },
      {
        id: 2,
        name: 'Curiosity API'
      },
      {
        id: 3,
        name: 'Skillshare Somerville'
      }
    ];

    server = new Pretender(function() {
      this.get('/api/projects', function(request) {
        return [200, {"Content-Type": "application/json"}, JSON.stringify({projects: projects})];
      });

      this.get('/api/projects/:id', function(request) {
        var projects = projects.find(function(project) {
          if (project.id === parseInt(request.params.id, 10)) {
            return project;
          }
        });

        return [200, {"Content-Type": "application/json"}, JSON.stringify({projects: projects})];
      });
    });

  },
  teardown: function() {
    Ember.run(App, 'destroy');
    server.shutdown();
  }
});

test('Should allow navigation to the projects page from the landing page', function() {
  visit('/').then(function() {
    click('a:contains("Projects")').then(function() {
      equal(find('h3').text(), 'Projects');
    });
  });
});

test('Should list all projects', function() {
  visit('/projects').then(function() {
    equal(find('a:contains("Scene Hub")').length, 1);
    equal(find('a:contains("Curiosity API")').length, 1);
    equal(find('a:contains("Skillshare Somerville")').length, 1);
  });
});

test('Should be able to navigate to a project page', function() {
  visit('/projects').then(function() {
    click('a:contains("Scene Hub")').then(function() {
      equal(find('h4').text(), 'Scene Hub');
    });
  });
});

test('Should be able visit a project page', function() {
  visit('projects/1').then(function() {
    equal(find('h4').text(), 'Scene Hub');
  });
});
