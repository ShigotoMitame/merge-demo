# Merge demo

Repo to demostrate merging things

## Rules

  - Files must contain only numbers.
  - Files must be numerically sorted.


## Merging

If the PR is a feature/fix:
  - Start from `develop`
  - Merge into `develop`

If the PR is a releasefeature/releasefix:
  1. Start from `release/*`
  2. Create branch with feature/fix for release in branch `x`
  3. Create branch to merge into `develop` (branch `x.develop`)
  4. Merge `develop` into `x.develop`
  5. Create PR from `x.develop` into `develop` (should have no conflicts and should be up to date)
  6. Merge PR and dev test
  7. Check for issues
      - If no issues:
          1. Create PR from `x` into `release/*`
          2. Merge PR
          3. (Auto merge `release/*` into `develop`)
      - If issues:
          1. Create commits on `x` and go to 3


If the PR is a hotfeature/hotfix:
  1. Start from `master`
  2. Create branch with feature/fix for master in branch `x`
  3. Create branch to merge into `develop` (branch `x.develop`)
  4. Merge `develop` into `x.develop`
  5. Create PR from `x.develop` into `develop` (should have no conflicts and should be up to date)
  6. Merge PR and dev test
  7. Check for issues on `develop`
      - If no issues:
          1. Create PR from `x` into `release/*`
          2. Merge PR
          3. (Auto merge `release/*` into `develop`)
      - If issues:
          1. Create commits on `x` and go to 3
  8. Create PR from `x.release` into `release/*` (should have no conflicts and should be up to date)
  9. Merge PR and dev test
  10. Check for issues on `release/*`
      - If no issues:
          1. Create PR from `x` into `master`
          2. Merge PR
          3. (Auto merge `master` into `release/*`)
          4. (Auto merge `release/*` into `develop`)
      - If issues:
          1. Create commits on `x` and go to 3
