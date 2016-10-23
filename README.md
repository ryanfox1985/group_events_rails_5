# README

[![Build Status](https://travis-ci.org/ryanfox1985/group_events_rails_5.svg?branch=master)](https://travis-ci.org/ryanfox1985/group_events_rails_5)
[![Coverage Status](https://coveralls.io/repos/github/ryanfox1985/group_events_rails_5/badge.svg?branch=master)](https://coveralls.io/github/ryanfox1985/group_events_rails_5?branch=master)
[![Code Climate](https://codeclimate.com/github/ryanfox1985/group_events_rails_5/badges/gpa.svg)](https://codeclimate.com/github/ryanfox1985/group_events_rails_5)
[![Dependency Status](https://gemnasium.com/badges/github.com/ryanfox1985/group_events_rails_5.svg)](https://gemnasium.com/github.com/ryanfox1985/group_events_rails_5)
[![security](https://hakiri.io/github/ryanfox1985/group_events_rails_5/master.svg)](https://hakiri.io/github/ryanfox1985/group_events_rails_5/master)
[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/ryanfox1985/group_events_rails_5)
![license](https://img.shields.io/github/license/mashape/apistatus.svg)

## Dependencies
* Ruby 2.3.0
* Rails 5

## Getting started

Run tests:
```shell
bundle
bundle exec rake db:setup
bundle exec rake
```

Run rubocop:
```shell
bundle
bundle exec rubocop
```

# Exercise

## Background:

A group event will be created by an user. The group event should run for a whole number of days e.g.. 30 or 60. There should be attributes to set and update the start, end or duration of the event (and calculate the other value). The event also has a name, description (which supports formatting) and location. The event should be draft or published. To publish all of the fields are required, it can be saved with only a subset of fields before it’s published. When the event is deleted/remove it should be kept in the database and marked as such.

## Deliverable:

Write an AR model, spec and migration for a GroupEvent that would meet the needs of the description above. Then write the api controller and spec to support JSON request/responses to manage these GroupEvents. For the purposes of this exercise, ignore auth. Please provide your solution as a rails app called exercise_YYMMDD_yourname, sent as a zip file.
