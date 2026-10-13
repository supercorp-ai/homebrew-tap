# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.16.6.tgz"
      sha256 "e95ebcec3fef2f4a72d1be8a099761e659c1c944d20b6f23142ea52542bf9fb7"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.16.6.tgz"
      sha256 "98bd9fac9bddaaa3175bee56adc002e574576f797e40bf84f56b37889b6a7c4a"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.16.6.tgz"
      sha256 "4c06bcc881f755f19ae52301f1a6f3a787f64c5d9959c2f7589b63304e2ab076"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.16.6.tgz"
      sha256 "44375577d8a0b1a1788e34a6fcbc441b6d7497bc2180afa3ac1add88cae282c3"
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
