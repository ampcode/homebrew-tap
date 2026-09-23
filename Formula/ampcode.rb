class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790176630-gcb0885"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790176630-gcb0885/amp-darwin-arm64"
      sha256 "c2387b8540eb59128e307f2457152a2e45e928d5c0029268ffecee932d76fddc"
    else
      url "https://static.ampcode.com/cli/0.0.1790176630-gcb0885/amp-darwin-x64"
      sha256 "82009d1dcc03883488d330382ab20b84b06450fc5f09694b3a0748704d39f380"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790176630-gcb0885/amp-linux-arm64"
      sha256 "533e75100a1aebbebc95c3ea29bf6dafb1bace530a9339e1d95baf1836e97217"
    else
      url "https://static.ampcode.com/cli/0.0.1790176630-gcb0885/amp-linux-x64"
      sha256 "7537bb2fd7b34103385e4777fbe08a638300acda043d3b726c9815c612493e76"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
