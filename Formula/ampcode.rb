class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794240032-ga42e06"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794240032-ga42e06/amp-darwin-arm64"
      sha256 "0820ca00ac743498e11a318763ed57005aa54204b48642be749f4f855e9c16ae"
    else
      url "https://static.ampcode.com/cli/0.0.1794240032-ga42e06/amp-darwin-x64"
      sha256 "34c692936aa80ad3bac4824c093227a5efd2b3e4696367954ed0559015d5014d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794240032-ga42e06/amp-linux-arm64"
      sha256 "cc05516d9c5d8fce870275d070c25cabcdcf798855c23c33b5ae8e45383ecc74"
    else
      url "https://static.ampcode.com/cli/0.0.1794240032-ga42e06/amp-linux-x64"
      sha256 "514e98aa6ef6142bc45d28140704ac63ad2e72eed19b26ce15d629b8028d95b7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
