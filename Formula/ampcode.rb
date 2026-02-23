class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771824912-g3d674e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771824912-g3d674e/amp-darwin-arm64"
      sha256 "41ec98382862743b3c240ed957fe2a2c2a9174596865fcc9a8db7497d9b83222"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771824912-g3d674e/amp-darwin-x64"
      sha256 "499312cb80314fcfc95d3f799ff90b37875652d891ba988285e88b659d21c6e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771824912-g3d674e/amp-linux-arm64"
      sha256 "8e0ff3ec706cc1db0e91fb97910029ac8d2fa6e8d373146ea3ef7d0e79f84be2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771824912-g3d674e/amp-linux-x64"
      sha256 "df6572f12306e106883058e7faa139a6d41f7396b3a26eb4ed7b974c46030760"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
