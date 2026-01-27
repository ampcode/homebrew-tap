class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769553623-ge42d35"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769553623-ge42d35/amp-darwin-arm64"
      sha256 "7489e3e9d6c449f2cd712190cf11752c83ec10baeb8143a51fe1c47d2d3b6230"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769553623-ge42d35/amp-darwin-x64"
      sha256 "d46e92e0dddc0277a1dc8ca90d348c7085ed790da903baa3f1c45e2d51122dc7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769553623-ge42d35/amp-linux-arm64"
      sha256 "4d8abedd4e0e3f65b5f63675fffb19e8c2d03d5747718dfa2e457d8eaa0589ab"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769553623-ge42d35/amp-linux-x64"
      sha256 "630f3cb6847bf4c60d11b11d4681c091884e4f3ae249e9b44aaa6c963b24fc3d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
