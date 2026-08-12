class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786536979-g9b443f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786536979-g9b443f/amp-darwin-arm64"
      sha256 "c1d6d322b7123baba8aebb2a064aa74b68cb07ccf79fab0272cc65190fa7f141"
    else
      url "https://static.ampcode.com/cli/0.0.1786536979-g9b443f/amp-darwin-x64"
      sha256 "65f41ce049089f41ffc7a5ff8b176317fdb987489a51131763b3594853e59df9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786536979-g9b443f/amp-linux-arm64"
      sha256 "479c471063646228d707f48e30d4afbfe41ecbeb7e5f9d150291e374e4f299e5"
    else
      url "https://static.ampcode.com/cli/0.0.1786536979-g9b443f/amp-linux-x64"
      sha256 "96d74d53f427bddd313b9c583bcd755f761b359a0985dbe4ebffa13cd0b7c717"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
