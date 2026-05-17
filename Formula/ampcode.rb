class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779019981-g8f743a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779019981-g8f743a/amp-darwin-arm64"
      sha256 "c51b6859eda7e208c63137ef3459a3156f38ccf00eea04c7cf564144bd3dc20e"
    else
      url "https://static.ampcode.com/cli/0.0.1779019981-g8f743a/amp-darwin-x64"
      sha256 "cb350ad237fbd8e39516ec2e4cb635830187328096025ab2a53b01460219ade9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779019981-g8f743a/amp-linux-arm64"
      sha256 "0b19da24795277575eb14eee4d241cd957e75fd36412025b8dd8942de0e863c9"
    else
      url "https://static.ampcode.com/cli/0.0.1779019981-g8f743a/amp-linux-x64"
      sha256 "8e038e79e78832b02d3f8fa60b300cd2c61259d12cf7a026deb99f00d15adb3a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
