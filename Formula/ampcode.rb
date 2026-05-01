class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777652199-geccbad"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777652199-geccbad/amp-darwin-arm64"
      sha256 "b8f20789b1ecd8115c8abf5461b014237ff602959c37a8050a0f2852fa4dc63c"
    else
      url "https://static.ampcode.com/cli/0.0.1777652199-geccbad/amp-darwin-x64"
      sha256 "4fcd98eeec6603108a3555e7058255030b94c8fc7062c02dca405d76fd892525"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777652199-geccbad/amp-linux-arm64"
      sha256 "f95f6d0f9eed79e45035611fc8e0fe5db182a7921d17d8050b80432868180979"
    else
      url "https://static.ampcode.com/cli/0.0.1777652199-geccbad/amp-linux-x64"
      sha256 "a0c2fa88bee32ab421871a0a4b925fadaabb0c58b893c566b60e2bc79166b1e1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
