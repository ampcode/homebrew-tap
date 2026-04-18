class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776470948-g80a751"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776470948-g80a751/amp-darwin-arm64"
      sha256 "09ce357b09f3353c14307d71f89f851746744f49c521c4bb8260bf61bed9dfd3"
    else
      url "https://static.ampcode.com/cli/0.0.1776470948-g80a751/amp-darwin-x64"
      sha256 "f78460f4d4d5881e78f4b8721c906fdcef8968ea45535f1ac92f6bc4601b459e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776470948-g80a751/amp-linux-arm64"
      sha256 "2ab21d88e1b81baeba85b7ff343ab064e0fded9d5601f4c70bc90dd8c27aeb74"
    else
      url "https://static.ampcode.com/cli/0.0.1776470948-g80a751/amp-linux-x64"
      sha256 "4387709865e2dff55b7d13450ad4422be8317d61e94fa67bb510724c69a813aa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
