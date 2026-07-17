class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784247472-g76909f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784247472-g76909f/amp-darwin-arm64"
      sha256 "521a9473876d488a5f05f9ea8fca20c9686d3321422dea5f3f0283576f4d9bdc"
    else
      url "https://static.ampcode.com/cli/0.0.1784247472-g76909f/amp-darwin-x64"
      sha256 "0a838bebdc051ff02f8360b9ccb4ce1d931e8f4bbdadf793c6ef4fc93688199a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784247472-g76909f/amp-linux-arm64"
      sha256 "3ce5d2385ff390ae826a4f9e201f01d70d35f03e8d1ae9b0ea12885834ed7cd3"
    else
      url "https://static.ampcode.com/cli/0.0.1784247472-g76909f/amp-linux-x64"
      sha256 "17127b9f1d040d7aa532ca8631d33bd7b857092f270d09b00e948349deb31782"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
