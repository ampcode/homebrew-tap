class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771290972-g4a01b9"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771290972-g4a01b9/amp-darwin-arm64"
      sha256 "0f5bd7e2d935335a7247da8956dd23fb11bd33a71b21a8b86a2c78101288d82a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771290972-g4a01b9/amp-darwin-x64"
      sha256 "0db5cdbdd1fad85620dd53087b3736237d8d01b4dbac79138fee09a156e2d5df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771290972-g4a01b9/amp-linux-arm64"
      sha256 "ac842b43e34ca3e23c28b86284875de459380a047bea6b2fb937a17b91083bfc"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771290972-g4a01b9/amp-linux-x64"
      sha256 "60201a43d0ff60f180a8274553e589d9fc6f068f795c1a035c0c5e566420e15c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
