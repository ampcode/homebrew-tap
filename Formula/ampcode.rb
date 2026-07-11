class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783746383-g8a60c7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783746383-g8a60c7/amp-darwin-arm64"
      sha256 "5f1dd0c6db7d8d2bba451e9741357efff49f814c61e347ec1d25ba1d07eaafb1"
    else
      url "https://static.ampcode.com/cli/0.0.1783746383-g8a60c7/amp-darwin-x64"
      sha256 "9c1d47c73a526dcdca8d8509d257822987795ff22da788e1832de0301bf52181"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783746383-g8a60c7/amp-linux-arm64"
      sha256 "23bb6c232f9b40cda3d4234a732f399243210f471422381b366c2c866cef3573"
    else
      url "https://static.ampcode.com/cli/0.0.1783746383-g8a60c7/amp-linux-x64"
      sha256 "ddf2f5b4d63d37a13dbab6176220e0f5ea6b1e74ddac479c9f96f42bf6f6b81a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
