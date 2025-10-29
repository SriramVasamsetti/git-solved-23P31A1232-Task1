# My Git Mastery Challenge Journey

## Student Information
- Name: Vasamsetti Sri Ram
- Student ID: 23P31A1232
- Repository: https://github.com/SriramVasamsetti/git-solved-23P31A1232-Task1.git
- Date Started: 28 Oct 2025
- Date Completed: 29 OCT 2025

## Task Summary
Cloned instructor's repository with pre-built conflicts and resolved all merge conflicts across multiple branches using proper Git workflows. All advanced Git commands were practiced locally.

## Commands Used

| Command | Times Used | Purpose |
|---------|------------|----------|
| **git clone** | 2 | Clone instructor's repository (one restart) |
| **git checkout** | 20+ | Switch between branches and create new ones |
| **git branch** | 10+ | View and manage branches |
| **git merge** | 2 | Merge dev and conflict-simulator into main |
| **git add** | 30+ | Stage resolved conflicts and new files |
| **git commit** | 15+ | Commit resolved changes and features |
| **git push** | 10+ | Push to my repository (main, tags, feature branches) |
| **git fetch** | 2 | Fetch updates from instructor |
| **git pull** | 1 | Pull updates from instructor (verified up-to-date) |
| **git stash** | 2 | Save temporary work and restore it |
| **git cherry-pick** | 2 | Copy specific commit (New feature) and recover lost commit (Bad commit) |
| **git rebase** | 1 | Rebase feature branch onto main for linear history |
| **git reset** | 3 | Practice undoing commits (soft, mixed, hard) |
| **git revert** | 1 | Safe undo of a bad commit |
| **git tag** | 2 | Create release tags |
| **git reflog** | 5+ | Used to find lost commits after hard reset |

## Conflicts Resolved

### Merge 1: main + dev (6 files)
- Strategy: **Combined** production and development logic.
- Difficulty: Medium. Required restructuring of YAML/JSON configs and shell scripts.

### Merge 2: main + conflict-simulator (6 files)
- Strategy: **Experimental Features**. Maintained production stability by adding simulator features behind flags or in separate configuration blocks.
- Difficulty: Hard. Required integrating three distinct configuration sets into a single file structure.

## Key Learnings
- **Conflict Resolution**: Mastered resolving conflicts involving three different code versions.
- **Advanced Commands**: Learned the difference and use cases for `rebase` (linear history) vs. `merge` (preserving history).
- **History Management**: Understood that `git revert` is for public undo, and `git reset --hard` is only for local cleanup. `git reflog` is a necessary safety net.