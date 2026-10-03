class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790985688-g8b9519"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790985688-g8b9519/amp-darwin-arm64"
      sha256 "d12e76871fc7a343f9da2c999d8d2c79132c8f052d849e2b54f3a0e649318ba0"
    else
      url "https://static.ampcode.com/cli/0.0.1790985688-g8b9519/amp-darwin-x64"
      sha256 "2da2615d81ccb3761bec04c5e5f464b2b69e4481cb29daef8d1dafceb699aa59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790985688-g8b9519/amp-linux-arm64"
      sha256 "b477c56d1c860024cfc361a72eea672adafd06dd778af5529ef761a21738812e"
    else
      url "https://static.ampcode.com/cli/0.0.1790985688-g8b9519/amp-linux-x64"
      sha256 "8fcbf96350a6632ce1656075666a6511fcf17efd55fd642f76a0dc3e42adf57e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
