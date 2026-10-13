# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.16.0.tgz"
      sha256 "56ce9ad8efd0653d4a9eb7cb8b21b786cd8a27528437ef6947ca9a4dffc82bdd"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.16.0.tgz"
      sha256 "489ffda140797c6f68b5ec7ea2265a960fa48cf9a5ba3046c354ed315b013e0c"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.16.0.tgz"
      sha256 "553e91e4ea554879a6c4ec7e80b782c86c2b1c98888c08b4ef0a811646a185fe"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.16.0.tgz"
      sha256 "2f2fc96e8fefbc1b0eeb6c9644df8ea6bd9c940cbd3a4a42227aa81863075678"
    end
  end

  def install
    # npm's archive holds the program under package/, which Homebrew takes away when it unpacks.
    bin.install "superci"
  end

  test do
    assert_equal "superci #{version}", shell_output("#{bin}/superci --version").strip
  end
end
