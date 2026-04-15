class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776265548-gb00015"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776265548-gb00015/amp-darwin-arm64"
      sha256 "5f0740638176a5d28553e78cdf93cafe548dc77c30bf16ae18878dc4170b0a52"
    else
      url "https://static.ampcode.com/cli/0.0.1776265548-gb00015/amp-darwin-x64"
      sha256 "a80c4fb6eea19cfc362f083dae8024543332d4e12630232058d165dd59c22ca7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776265548-gb00015/amp-linux-arm64"
      sha256 "f6f3582d00397918efdb6dd2c5228f798a2f46e10986cf2bac95b72140779936"
    else
      url "https://static.ampcode.com/cli/0.0.1776265548-gb00015/amp-linux-x64"
      sha256 "35557a4b66c46cd16bee2b055d795c8e535c733905d2d8d65100694912e1a3d5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
