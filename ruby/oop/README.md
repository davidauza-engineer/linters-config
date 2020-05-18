# OOP - Milestone 1 Tests

This GitHub Action will verify that the requirements for this milestone are met.

### Set-up RSpec GitHub Action - it will give you feedback about missing requirements

Please do the following **steps in this order**:

1. Copy the file [oop-milestone-1.yml](../.github/workflows/oop-milestone-1.yml) into your `.github/workflows/` folder.
    - **Remember** to use the file linked above
    - **Remember** that `.github` folder starts with a dot.
    - If you think that change is necessary - open a [Pull Request in this repository](../../README.md#contributing) and let your code reviewer know about it.

Your `.github/workflows` folder should now contain two files, one for the linters and one for the tests for this milestone:

```
.github/workflows/
├── linters.yml
└── oop-milestone-1.yml
```

2. When you open your first pull request you should see the result of the GitHub Actions:

![gh actions checks](../../assets/images/gh-actions-ruby-checks.png)

Click on the `Details` link of the test action to see the full output and the errors that need to be fixed.

### Set-up RSpec in your local env - it will help you find errors in the requirements

1. Add `gem 'rspec', '~>3.0'` to `Gemfile` (not sure how to use Gemfile? Read [this](https://bundler.io/v1.15/guides/bundler_setup.html)).
2. Run `bundle install`.
3. Run `rspec init`.
3. Copy [spec/milestone_1_spec.rb](spec/milestone_1_spec.rb) into the `rspec` directory generated in the step above.
4. **Do not make any changes in config files - they represent the guidelines that you share with your team - which is a group of all Microverse students.**
    - If you think that change is necessary - open a [Pull Request in this repository](../README.md#contributing) and let your code reviewer know about it.
5. Run `rspec`.
6. Fix missing requiremnts.
