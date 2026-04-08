class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775678984-g789135"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775678984-g789135/amp-darwin-arm64"
      sha256 "113312dd4b0f1a000c81f1ad4496556f6ccd4044a73f26495798a884df2b4c8f"
    else
      url "https://static.ampcode.com/cli/0.0.1775678984-g789135/amp-darwin-x64"
      sha256 "2642ebe291f10a9171ced88687a1b8f476da7ba3726c96d5053016de2d8f11f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775678984-g789135/amp-linux-arm64"
      sha256 "954b87b3b065013f554ed80f945dd6e3dea7b0c40ad1d111848890f48f31e0b9"
    else
      url "https://static.ampcode.com/cli/0.0.1775678984-g789135/amp-linux-x64"
      sha256 "bf9c8855ae91099b88bef08980ee12fc553a1afd64040f06d76d9f17aaf2061c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
