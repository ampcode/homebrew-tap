class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772455613-g562396"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772455613-g562396/amp-darwin-arm64"
      sha256 "a58a2c0cc9071a90ffd7ac29038fef677e4c928394ab6d7b257323144a30321f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772455613-g562396/amp-darwin-x64"
      sha256 "a38bb2b4a82b96996608b18b3108051a627d9ddf224548c404b7fc6d3813e5ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772455613-g562396/amp-linux-arm64"
      sha256 "d133a82522716c6d4d77e135379abb6137deff93b43a05f36b2646d12d93c495"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772455613-g562396/amp-linux-x64"
      sha256 "fd318159071e5d0d6f6218c5eef844031deee851f835e4ab42a2cf6f8a80004a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
