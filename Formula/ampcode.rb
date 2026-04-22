class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776860046-g21963c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776860046-g21963c/amp-darwin-arm64"
      sha256 "01a8c810709a06d1fa7b30e0d6f36ee5e002a65ab463c7564f83714a1bb617a4"
    else
      url "https://static.ampcode.com/cli/0.0.1776860046-g21963c/amp-darwin-x64"
      sha256 "626cc613bdb12727c078763bb68ed15a3c985c12839f76d097af1d3b24b727c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776860046-g21963c/amp-linux-arm64"
      sha256 "e532a67b297408f77dac2b63913cbc6ed3b6c08cd32aa4b0c3f01c9de011af3a"
    else
      url "https://static.ampcode.com/cli/0.0.1776860046-g21963c/amp-linux-x64"
      sha256 "d9b9740f68a24c823eb6011c2fc9132419798ea14266f1ac002c0fedae7961ec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
