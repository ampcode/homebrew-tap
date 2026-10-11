class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791748857-g035f45"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791748857-g035f45/amp-darwin-arm64"
      sha256 "43518303e3e6e108dc3ee6cfa9db55f88bdf2287f45b4e66b287295abb9b1720"
    else
      url "https://static.ampcode.com/cli/0.0.1791748857-g035f45/amp-darwin-x64"
      sha256 "1a4a75ba42400fb33a2395d7398cd703c8f781cdf9c82fe519cef67905fd64c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791748857-g035f45/amp-linux-arm64"
      sha256 "7bda4687fb2cd7aad6004e89771c844acb2c51c74d711ce6179b07e6d45b18c6"
    else
      url "https://static.ampcode.com/cli/0.0.1791748857-g035f45/amp-linux-x64"
      sha256 "4406e6de4fa3fffb198b43a47239da38e4614f70cace17f66c88adc06a164588"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
