class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770124117-g3cf1fb"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770124117-g3cf1fb/amp-darwin-arm64"
      sha256 "638f8c7502958e19a34f0151b4f4d37dd4af9b06154da7f9c5484eb5bb2b815c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770124117-g3cf1fb/amp-darwin-x64"
      sha256 "a379b9e1f83b107375acaf9f9d6544f49ae9a9fd492be461a69f30b0311abc30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770124117-g3cf1fb/amp-linux-arm64"
      sha256 "2ee02721356926920da3355b21e045406501651f6e5b2c8280ca2b0dee9cb6f8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770124117-g3cf1fb/amp-linux-x64"
      sha256 "4a3d31fc6ae68bbed20a2b7a6d2aad00955d2b8fbcb0c0ffecb21ab548fa28a2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
